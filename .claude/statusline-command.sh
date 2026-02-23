#!/usr/bin/env bash
command -v jq >/dev/null 2>&1 || exit 0
input=$(cat)

cwd=$(echo "$input" | jq -r '.workspace.current_dir // .cwd')
model=$(echo "$input" | jq -r '.model.display_name // empty')
used=$(echo "$input" | jq -r '.context_window.used_percentage // empty')

# Shorten path: ~/root/…/parent/leaf
short_dir="${cwd/#$HOME/~}"
IFS='/' read -ra segs <<< "$short_dir"
if [ "${#segs[@]}" -gt 4 ]; then
  short_dir="${segs[0]}/${segs[1]}/…/${segs[-2]}/${segs[-1]}"
fi

# Git branch (skip lock if contended)
git_branch=""
if git -C "$cwd" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git_branch=$(git -C "$cwd" symbolic-ref --short HEAD 2>/dev/null || git -C "$cwd" rev-parse --short HEAD 2>/dev/null)
fi

# Build parts with pipe dividers
sep=" | "
parts="$(printf '\033[0;33m%s\033[0m' "$short_dir")"

if [ -n "$git_branch" ]; then
  parts="${parts}${sep}$(printf '\033[0;35m%s\033[0m' "$git_branch")"
fi

if [ -n "$model" ]; then
  parts="${parts}${sep}$(printf '\033[0;32m%s\033[0m' "$model")"
fi

if [ -n "$used" ]; then
  parts="${parts}${sep}$(printf '\033[0;90mctx:%s%%\033[0m' "$used")"
fi

printf '%s' "$parts"

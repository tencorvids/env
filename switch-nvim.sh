#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
target="${HOME}/.config/nvim"

old_config="${repo_root}/config/nvim"
new_config="${repo_root}/config/nvim-new"

case "${1:-}" in
  old)
    source="${old_config}"
    ;;
  new)
    source="${new_config}"
    ;;
  status)
    if [ -L "${target}" ]; then
      printf '%s -> %s\n' "${target}" "$(readlink "${target}")"
    elif [ -e "${target}" ]; then
      printf '%s exists but is not a symlink\n' "${target}"
    else
      printf '%s does not exist\n' "${target}"
    fi
    exit 0
    ;;
  *)
    printf 'Usage: %s {old|new|status}\n' "$0" >&2
    exit 1
    ;;
esac

if [ ! -d "${source}" ]; then
  printf 'Config directory does not exist: %s\n' "${source}" >&2
  exit 1
fi

mkdir -p "$(dirname "${target}")"

if [ -e "${target}" ] && [ ! -L "${target}" ]; then
  printf 'Refusing to replace non-symlink: %s\n' "${target}" >&2
  exit 1
fi

ln -sfn "${source}" "${target}"
printf '%s -> %s\n' "${target}" "${source}"

#!/usr/bin/env sh

ws=${1:-$AEROSPACE_FOCUSED_WORKSPACE}

IFS=$'\n' all_wins=$(aerospace list-windows --all --format '%{window-id}|%{app-name}|%{window-title}|%{monitor-id}|%{workspace}')
IFS=$'\n' all_ws=$(aerospace list-workspaces --all --format '%{workspace}|%{monitor-id}')

target_mon=$(printf '%s\n' $all_ws | grep "^$ws|" | cut -d'|' -f2 | xargs)

move_win() {
  local win
  win=$(printf '%s\n' $all_wins | grep "$1")

  [ -n "$win" ] || return 0

  local win_mon win_id win_ws
  win_mon=$(printf '%s' "$win" | cut -d'|' -f4 | xargs)
  win_id=$(printf '%s' "$win" | cut -d'|' -f1 | xargs)
  win_ws=$(printf '%s' "$win" | cut -d'|' -f5 | xargs)

  [ "$target_mon" != "$win_mon" ] && return 0
  [ "$ws" = "$win_ws" ] && return 0

  aerospace move-node-to-workspace --window-id "$win_id" "$ws"
}

move_win '|Picture-in-picture|'

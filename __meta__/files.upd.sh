#!/bin/bash
# -*- coding: utf-8, tab-width: 2 -*-

function upd_flist () {
  local SELFFILE="$(readlink -m "$BASH_SOURCE")"
  local SELFPATH="$(dirname "$SELFFILE")"
  cd "$SELFPATH"/.. || return $?
  find [A-Za-z]*/ -name 'icon-theme.cache' -print -delete
  EZGAL_LISTFN="${SELFFILE%.upd.sh}" ezgal3ry-update-file-lists Humanity*
  return 0
}

upd_flist "$@"; exit $?

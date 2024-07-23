#!/usr/bin/env bash
show_watson() {
  if ! hash watson >/dev/null; then return; fi

  local elapsed
  elapsed="$(watson status --elapsed)"
  if [[ "$elapsed" == "No project started." ]]; then return; fi
  elapsed="${elapsed/ ago/}"
  elapsed="${elapsed/ minutes/m}"
  elapsed="${elapsed/ minute/m}"
  echo "祥 $elapsed"
}

show_watson

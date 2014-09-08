if [[ ! -o interactive ]]; then
    return
fi

compctl -K _gauenv gauenv

_gauenv() {
  local words completions
  read -cA words

  if [ "${#words}" -eq 2 ]; then
    completions="$(gauenv commands)"
  else
    completions="$(gauenv completions ${words[2,-2]})"
  fi

  reply=("${(ps:\n:)completions}")
}

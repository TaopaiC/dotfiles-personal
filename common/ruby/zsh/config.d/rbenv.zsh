# rbenv
if [[ -z $TMUXX  ]]; then
  export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
  if which rbenv > /dev/null; then eval "$(rbenv init - --no-rehash)"; fi
fi

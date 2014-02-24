# rbenv
if [[ -z $TMUX  ]]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  if which rbenv > /dev/null; then eval "$(rbenv init - --no-rehash)"; fi
fi

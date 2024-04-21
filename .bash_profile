# call ~/.bashrc
if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# asdf
. "/opt/homebrew/opt/asdf/libexec/asdf.sh"
# asdf completions
. "/opt/homebrew/opt/asdf/etc/bash_completion.d/asdf.bash"


if status is-interactive
  alias vi='nvim'
  alias vim='nvim'
end

set -g theme_display_date no
set -g theme_date_format "+%Y/%m/%d %H:%M:%S"

set -gx GPG_TTY $(tty)

eval "$(/opt/homebrew/bin/brew shellenv)"
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
set -gx VOLTA_FEATURE_PNPM 1
set -gx PATH "$HOME/.rbenv/bin" $PATH
set -gx PATH "$HOME/.local/bin" $PATH
eval "$(rbenv init -)"

# pnpm
set -gx PNPM_HOME "$HOME/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

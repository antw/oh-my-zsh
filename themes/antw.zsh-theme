# This theme is a cross between the Clean and Arrow themes.
#
#  * Git status shown as the right-prompt.
#  * Left prompt from the Clean theme, with at most three path segments.
#

if [ "$(whoami)" = "root" ]; then NCOLOR="red"; else NCOLOR="white"; fi

if [[ -n $SSH_CONNECTION ]]; then
  # SSH connections include the hostname.
  PROMPT="%{$fg[$NCOLOR]%}%n@%m%{$reset_color%}:%{$fg[blue]%}%3c/%{$reset_color%} %(!.#.$) "
  RPROMPT=''
else
  PROMPT="%{$fg[blue]%}%3c/%{$reset_color%} %(!.#.$) "
  RPROMPT='$(git_prompt_info)'
fi

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}(%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_no_bold[blue]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗"

# LS colors, made with http://geoff.greer.fm/lscolors/
export LSCOLORS="gxfxcxdxbxegedabagacad"
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'


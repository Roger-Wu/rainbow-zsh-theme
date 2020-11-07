# to install gdate, run `brew install coreutils`

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $; fi
}

function preexec() {
  timer=$(gdate +%s%3N)
}

function precmd() {
  if [ $timer ]; then
    local now=$(gdate +%s%3N)
    local d_ms=$(( $now - $timer ))
    local d_s=$((d_ms / 1000))
    local ms=$((d_ms % 1000))
    local s=$((d_s % 60))
    local m=$(((d_s / 60) % 60))
    local h=$((d_s / 3600))
    if ((h > 0)); then prompt_elapsed=${h}h${m}m
    elif ((m > 0)); then prompt_elapsed=${m}m${s}s
    elif ((s >= 10)); then prompt_elapsed=${s}.$((ms / 100))s
    elif ((s > 0)); then prompt_elapsed=${s}.$((ms / 10))s
    else prompt_elapsed=${ms}ms
    fi
  fi

  prompt_date_time=`gdate +"%Y-%m-%d %H:%M:%S"`
}

PROMPT=''
PROMPT+='%(?,,%{$fg[red]%}FAIL: $?%{$reset_color%}
)'
PROMPT+='%{$fg[yellow]%}%n%{$reset_color%}'
PROMPT+='@%{$fg[green]%}%M%{$reset_color%}'
PROMPT+=' %{$fg[cyan]%}%~%{$reset_color%}'
PROMPT+=' $(git_prompt_info)'
PROMPT+=' %{$fg[magenta]%}$prompt_elapsed%{$reset_color%}'
PROMPT+=' %{$fg[white]%}$prompt_date_time%{$reset_color%}'
PROMPT+='
$(prompt_char) '

RPROMPT=''

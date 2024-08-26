export PS1="%~: "
export PATH="$PATH:$HOME/mybin"

alias zshrc="vim ~/.zshrc"
alias srczsh="source ~/.zshrc"

alias vimrc="vim ~/.vimrc"

alias ccw="cc -Wextra -Wall -Werror"
alias norm="norminette"
alias rm='trash-put'

alias notion="open -a /Applications/Notion.app"

intra()
{
	if [ -z "$1" ]; then
		open -a "google chrome" "https://intra.42.fr"
	else
		open -a "google chrome" "https://intra.42.fr/searches/search?query=$1"
	fi
}

gpt()
{
	if [ -z "$1" ]; then
		open -a "google chrome" "https://chat.openai.com"
	fi
}

github()
{
	if [ -z "$1" ]; then
		open -a "google chrome" "https://github.com/kojilbj?tab=repositories"
	fi
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/watanabekoji/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/watanabekoji/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/watanabekoji/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/watanabekoji/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(rbenv init - zsh)"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
#export C_INCLUDE_PATH="$HOME/.brew/include:$C_INCLUDE_PATH"
#export LIBRARY_PATH="$HOME/.brew/lib:$LIBRARY_PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"




PURE_HOME="$HOME/.zsh/pure"
APPEND_STR="\\nPURE_PROMPT_PATH_LAYERS=3\\nPURE_PROMPT_SYMBOL=\"\$\"\\n\\nfpath+=\"\$HOME/.zsh/pure\"\\nautoload -U promptinit; promptinit\\nprompt pure"
ZSHRC="$HOME/.zshrc"

do_install() {
    if [ ! -e "$ZSHRC" ];
        then echo > "$ZSHRC";
    fi
    if [ -e "$PURE_HOME/async" ] && [ -e "$PURE_HOME/prompt_pure_setup" ];
        then echo "The pure already installed in $PURE_HOME"
    else
        command mkdir -p "$PURE_HOME"
        command echo "Start download pure~"
        command curl -sSo "$PURE_HOME/async" https://raw.githubusercontent.com/likun7981/install-pure/main/fork-pure/async.zsh 
        command curl -sSo "$PURE_HOME/prompt_pure_setup" https://raw.githubusercontent.com/likun7981/install-pure/main/fork-pure/pure.zsh
        command echo "Download pure successful!"
        command echo "Start setup pure~"
        command printf "${APPEND_STR}" >> "$HOME/.zshrc"
        command echo "Setup pure successful! please restart iTerm2"
    fi
}

do_install;

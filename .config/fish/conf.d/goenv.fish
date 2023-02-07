set GOENV_ROOT $HOME/.goenv
set PATH $GOENV_ROOT/bin $PATH
status --is-interactive; and source (/home/linuxbrew/.linuxbrew/bin/goenv init -|psub)
set PATH $GOROOT/bin $PATH
set PATH $PATH GOPATH/bin

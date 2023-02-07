# Set PATH for Aqua.
# https://aquaproj.github.io/docs/reference/install/
if set -q AQUA_ROOT_DIR
    set PATH $AQUA_ROOT_DIR/bin $PATH
else if set -q XDG_DATA_HOME
    set PATH $XDG_DATA_HOME/aquaproj-aqua/bin $PATH
else
    set PATH $HOME/.local/share/aquaproj-aqua/bin $PATH
end

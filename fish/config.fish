set -gx GOPATH $HOME/go
set PATH $PATH $HOME/google-cloud-sdk/bin $GOPATH/bin $HOME/miniconda3/bin $HOME/bin
set PATH $PATH /Library/Developer/Toolchains/swift-latest/usr/bin

set -gx CLICOLOR 1
set -gx LSCOLORS DxGxcxdxCxegedabagacad

ssh-add -K ~/.ssh/id_rsa

set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths

source $HOME/miniconda3/etc/fish/conf.d/conda.fish

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.fish.inc" ]
    if type source >/dev/null
        source "$HOME/google-cloud-sdk/path.fish.inc"
    else
        . "$HOME/google-cloud-sdk/path.fish.inc"
    end
end

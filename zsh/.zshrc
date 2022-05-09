# Path to your oh-my-zsh installation.
source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle git
antigen bundle $HOME/.zsh_custom/themes lambda_mod.zsh-theme --no-local-clone

antigen apply

# export
export EDITOR="vim"
export LDFLAGS="-L/usr/local/opt/postgresql@11/lib"
export CPPFLAGS="-I/usr/local/opt/postgresql@11/include"
export PKG_CONFIG_PATH="/usr/local/opt/postgresql@11/lib/pkgconfig"
export LC_ALL=en_US.UTF-8

export ANDROID_HOME="/Users/lucia/Library/Android/sdk"
export LDFLAGS="-L/usr/local/opt/imagemagick@6/lib"
export PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig"

export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

# openssl@1
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/usr/local/opt/openssl@1.1"

# golang
[[ -s "/Users/lucia/.gvm/scripts/gvm" ]] && source "/Users/lucia/.gvm/scripts/gvm"

export GOPATH="$HOME/go"
export PATH="$PATH:$(go env GOPATH)/bin"

# java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-8.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

# git plugin
export PATH=$HOME/.git-solo-flow/bin:$PATH

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="/usr/local/opt/binutils/bin:$PATH"
export PATH="/usr/local/opt/postgresql@11/bin:$PATH"
export PATH="/usr/local/opt/riscv-gnu-toolchain/bin:$PATH"
export PATH="/usr/local/protobuf/bin:$PATH"
export PATH="$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/python@3.10/bin:$PATH"
# export PATH="$HOME/.rbenv/shims:$PATH"

# alias proxy
alias proxy="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7891"
alias unproxy="unset https_proxy http_proxy all_proxy"

# alias for rails
alias cap="bundle exec cap"
alias rspec="bundle exec rspec"
alias annotate="bundle exec annotate"
alias rubocop="bundle exec rubocop"

# eval "$(rbenv init -)"
# eval "$(nodenv init -)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m'
fi

. /usr/local/opt/asdf/libexec/asdf.sh
export PATH="/usr/local/opt/openssl@3/bin:$PATH"

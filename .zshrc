# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode scd)

source $ZSH/oh-my-zsh.sh

# User configuration
#DEFAULT_USER=qasimj

export PATH="/google/data/ro/projects/wingman:/google/src/head/depot/google3/googlex/glass:/google/src/head/depot/google3/googlex/glass/flasher:/google/src/head/depot/google3/googlex/glass/tools:/usr/lib/jvm/java-6-sun/bin:/usr/local/google/home/qasimj/glass/android/out/host/linux-x86/bin:/usr/local/google/home/qasimj/glass/bin:/usr/lib/google-golang/bin:/usr/local/buildtools/java/jdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin":$PATH
# export PATH="/usr/local/google/home/qasimj/glass/bin:/usr/lib/jvm/java-6-sun/bin:/usr/lib/google-golang/bin:/usr/local/buildtools/java/jdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin":$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#source /etc/bash_completion.d/g4d
bindkey -M viins '^R' history-incremental-pattern-search-backward
bindkey -M vicmd '^R' history-incremental-pattern-search-backward

# Crow (Android emulator)
#fpath=(  /google/data/ro/teams/mobile_eng_prod/crow $fpath )
#autoload _crow
#compdef _crow /google/data/ro/teams/mobile_eng_prod/crow/crow.par
#alias crow=/google/data/ro/teams/mobile_eng_prod/crow/crow.par

function adb() {
  EMU_DEPS=/google/data/ro/teams/mobile_eng_prod/emu/live/google3/
  ANDROID_SDK=${EMU_DEPS}/third_party/java/android/android_sdk_linux/
  EMU_SUPPORT=${EMU_DEPS}/tools/android/emulator/support/
  ANDROID_ADB=${ANDROID_SDK}/platform-tools/adb
  ANDROID_ADB=${ANDROID_ADB} $EMU_SUPPORT/adb.turbo "$@"
}

# Add the internal Android SDK to your PATH
export SDK_LOC=/google/data/ro/teams/as-with-blaze/android-sdk-linux
export PATH=${PATH}:${SDK_LOC}/tools:${SDK_LOC}/platform-tools

plugins+=(zsh-completions)
autoload -U compinit && compinit
export PATH=${PATH}:${HOME}/github/pidcat

. /usr/local/google/home/$USER/.vim/bundle/powerline/powerline/bindings/zsh/powerline.zsh

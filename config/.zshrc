# export  PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# /home/colen
export ZSH="/home/colen/.oh-my-zsh"

# ZSH_THEME="random" # 随机主题 https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" ) # 设置随机加载时选择的主题列表

# CASE_SENSITIVE="true" # 区分大小写
# HYPHEN_INSENSITIVE="true" # 使用不区分连字符的补全 区分大小写的完成必须关闭。 _ 和 - 可以互换

# DISABLE_AUTO_UPDATE="true"
# DISABLE_UPDATE_PROMPT="true"
# export UPDATE_ZSH_DAYS=13 # 自动更新频率

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true" # disable colors in ls.
# DISABLE_AUTO_TITLE="true" # disable auto-setting terminal title.

# ENABLE_CORRECTION="true" # 命令自动纠错

#
# COMPLETION_WAITING_DOTS="true" # 等待完成时显示红点(可能导致多行提示问题 5.7.1之后可以工作https://github.com/ohmyzsh/ohmyzsh/issues/5765)

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true" # 禁止标记未跟踪文件 在大型存储库状态检查时禁止会快很多

HIST_STAMPS="yyyy-mm-dd" # 可选三种格式之一: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd" 或者使用 strftime 函数格式规范设置自定义格式

# ZSH_CUSTOM=/path/to/new-custom-folder # 使用自定义文件夹

# 插件
# 标准插件可以 $ZSH/plugins/
# 自定义插件 $ZSH_CUSTOM/plugins/
plugins=(
    git
    sudo
    z
    jump
    # zsh-syntax-highlighting
    # fast-syntax-highlighting
    zsh-autosuggestions
)

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64" # 编译标志

# aliases 别名映射
# alias pip=pip3
alias rm="trash" # 安装了一个 trash 命令，替代 rm 命令，被删除的文件会放到垃圾桶
alias cp="cp -i" # 防止copy的时候覆盖已存在的文件, 带上i选项，文件已存在的时候，会提示，需要确认才能copy
# alias cat="bat"
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

bindkey ',' autosuggest-accept #  → 补全不方便，自定义补全的快捷键,逗号补全

source $ZSH/oh-my-zsh.sh

# 依赖
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias proxy="source ~/tools/proxy.sh"
. ~/tools/proxy.sh set

export NODEJS_HOME=/usr/local/bin/node-v14.18.1-linux-x64
export PATH=${NODEJS_HOME}/bin:${PATH}

alias python=python3

#将~/tools下的命令作为环境变量
export PATH=$PATH:~/tools

export WORKPLACE=$HOME/project

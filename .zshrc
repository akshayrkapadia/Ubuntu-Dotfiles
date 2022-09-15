# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/akshay/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="intheloop"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
   git
   extract
   zsh-autosuggestions
   zsh-syntax-highlighting
   colored-man-pages
   copyfile
   colorize 
   wd
)

source $ZSH/oh-my-zsh.sh

# User configuration

export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Colorize Conifg
ZSH_COLORIZE_TOOL=pygmentize
ZSH_COLORIZE_STYLE="one-dark"


# Default fzf command
export FZF_DEFAULT_COMMAND="ag -g '' -l --hidden -i"

# ALIASES

# APT
alias apti="sudo apt install"
alias aptr="sudo apt remove"
alias aptu="sudo apt update && sudo apt upgrade"
alias apts="apt search"
alias apta="sudo apt autoclean && sudo apt autoremove"
alias aptm="apta && aptu"

# Snap
alias snapi="sudo snap install"
alias snapf="snap find"
alias snapr="sudo snap remove"
alias snapu="sudo killall snap-store && sudo snap refresh"

# Git
alias gitpush="gaa && gc -m 'Updated' && gp"

# Pentesting
alias responder="sudo python3 /opt/Responder/Responder.py"
alias linpeas="/opt/LinPEAS/linpeas.sh"
alias gobuster="/opt/gobuster/gobuster"
alias john="sudo /opt/john/run/john"
alias zip2john="sudo /opt/john/run/zip2john"
alias ssh2john="sudo python3 /opt/john/run/ssh2john.py"
alias unshadow="sudo /opt/john/run/unshadow"
alias sqlmap="python3 /opt/sqlmap-dev/sqlmap.py"
alias ghidra="/opt/Ghidra/ghidraRun"
alias tmNIDS="/opt/tmNIDS/tmNIDS"
alias volatility="python3 /opt/volatility3/vol.py"

# Colorize
alias cat="ccat"
alias less="cless"

# wc
alias lines="wc -l"
alias bytes="wc -m"

# Run ls after every cd command
function list_all() {
  emulate -L zsh
  ls
}
if [[ ${chpwd_functions[(r)list_all]} != "list_all" ]];then
  chpwd_functions=(${chpwd_functions[@]} "list_all")
fi

export PATH=$PATH:~/.local/bin

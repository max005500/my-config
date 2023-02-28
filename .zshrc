# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
eval "$(zellij setup --generate-auto-start zsh)"
eval "$(zoxide init zsh)"
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export VISUAL="$HOME/.local/bin/lvim"
export EDITOR="$HOME/.local/bin/lvim"
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk"
export ANDROID_HOME=$HOME/android
export ANDROID_SDK_ROOT=${ANDROID_HOME}
export PATH=${ANDROID_HOME}/cmdline-tools/9.0/bin:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${PATH}
export MANPATH="/usr/local/man:/usr/share/man"
# export ANDROID_ADB_SERVER_PORT=6565
# export ANDROID_ADB_SERVER_ADDRESS=172.27.208.1
# export ADB_SERVER_SOCKET=tcp:192.168.1.90:5037
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
path+=('/home/maxitox/.npm-global/bin')
path+=('/home/maxitox/.local/bin')
path+=('/home/maxitox/.cargo/bin')
path+=('/home/maxitox/.local/bin')
path+=('/home/maxitox/android/build-tools')
path+=('/home/maxitox/android/cmdline-tools/9.0/bin')
path+=('/home/maxitox/android/emulator')
path+=('/home/maxitox/android/platform-tools')
# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=es_CL.UTF-8

# Preferred editor for local and remote sessions


# Compilation flags
path+=('/home/maxitox/downloads/flutter/bin')
path+=('/home/maxitox/nvim-linux64/bin')
# export ARCHFLAGS="-arch x86_64"
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='lvim'
# fi

export CHROME_EXECUTABLE="brave"
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# ddk
alias cp='xcp'
alias google-chrome-stable="/mnt/c/Archivos\ de\ programa/Google/Chrome/Application/chrome.exe"
alias web="/mnt/c/Archivos\ de\ programa/BraveSoftware/Brave-Browser/Application/brave.exe"
alias studio="~/downloads/android-studio/bin/studio.sh"
alias zs="zsh" #general editar la zsh
alias zc="lvim ~/.zshrc" #general editar la zsh
alias vi="lvim" #general editar la zsh
alias ohmyzsh="mate ~/.oh-my-zsh"
alias pacupdate="sudo pacman -Syu" #general actualiza paquetes pacman
alias pacremove="sudo pacman -Rs" #general elimina un paquete de pacman
alias ls="exa --icons --sort=size" #general muestra los archivos de todo tipo
alias cd="z"
alias cat="bat --color always"
alias l="exa  -G --header --icons --sort=size -a" #general muestra los archivos de todo tipo
alias all="exa --long -G --header --icons --sort=size -a" #general muestra los archivos de todo tipo
alias alln="exa --long --header --icons --sort=size" #general muestra los archivos de todo tipo
alias allg="exa --long --header --tree --level=4 --icons --sort=size" #general muestra los archivos de todo tipo
alias generalalias="cat ~/.zshrc |grep alias |grep general"
alias gi="git init |figlet  'git iniciado' |cowsay -f eyes -n | lolcat"
alias gad="git add ."
alias gignore"touch .gitignore" #cracioin git ignore
alias gcm="sh ~/.scripts/s1.sh" # git commit -ma
alias finit="sh ~/.scripts/flutterInit.sh" # git commit -ma
alias gne="sh ~/.scripts/s2.sh" # ajuste globales de git
alias gcon="git config --list"  # configuracion global git
alias gbr="git branch"          # cambiar rama de git
alias gch="git checkout"        # cambiar de rama
alias gchb="git checkout -b"    # cambiar y crear rama nueva
alias gre="git reset --hard "   # volver al commit anterior
alias gph="git log --graph --oneline " # grafico de ramas
alias cll="ssh-keygen -t rsa -b 4096 -C"
alias mill="cat ~/.ssh/id_rsa.pub"
alias llon="eval $(ssh-agent -s)"
alias gma="git branch -M main |cowsay -f stegosaurus 'rama cambiada'|lolcat" # cambiar rama de master a main
alias kadd="ssh-add ~/.ssh/id_rsa"
alias gurl="git remote -v" #lista de links origin y el otro
alias gsurl="git remote set-url" # setear url de origin
alias gc="git clone" # clonar repositorio
alias gp="git pull origin" #pull del origin
alias gsh="git push origin" #push del origin
alias c="clear" #general comando para limpiar pantalla
alias tch="touch" #general comando para crear archivo
alias v="lvim" #general comando para iniciar editor de texto
alias sr="live-server" #util comando para iniciar un live server
alias shn="chmod +x" #util otorga permisos a los archivos
alias mk="mkdir" #general crear un directorio o carpeta
alias e="exit"
alias is="ionic serve"
alias adse="echo $ADB_SERVER_SOCKET"
alias lampstart="sudo /opt/lampp/lampp start"
alias lampstop="sudo /opt/lampp/lampp stop"
alias npgl="npm list -g --depth 0" #genera una lista de los paquetes npm instalados globalmente
alias npg="npm i -g" #instala paquetes globalmente
alias np="npm i" #instala paquetes en directorio
alias npi="npm init" #inicia carpeta y pakage npm
alias npl="npm list" # lista de paquetes instalados en scope
alias npa="npm audit" # revisa la seguridad y que los paquetes esten actualizados
alias npaf="npm audit fix -f" # fuerza la reparacion de paquetes
alias npaj="npm audit json"
alias npy="npm init -y" # inicia package json de forma instantanea
alias proyect="sh ~/scripts/proyect.sh"
alias mkin="sh ~/scripts/carpetas.sh && cd"
alias tw="tsc --watch" #inicia compilacion automatica
alias t="tsc" #compila archivo
alias ti="tsc --init" #genera tsconfig.json
alias y="&&"
alias one="brave 'https://www.office.com/launch/onenote?auth=2'"
alias tsr="tilix -a session-add-right"
alias tsd="tilix -a session-add-down"
alias y="&&"
alias repareM="export export LD_PRELOAD=/lib64/libfreetype.so"
alias matlabU="cd /usr/local/MATLAB/R2022a/bin"
alias lsd="ls -d .*"
alias npmalias="cat ~/.zshrc |grep alias |grep npm |less"
alias gitalias="cat ~/.zshrc |grep alias |grep git |less"
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
alias av="ng version" #muestra version de angular
alias ab="ng new" #crea una carpeta en donde se instalan las dependecias del proyecto de angular
alias al="ng serve" #crear server de angular
alias acom="ng g c" #crear componente recuerda agregar carpeta components
alias aser="ng g s" #crear servicios recuerda agregar carpeta servicios
alias apip="ng g p" #crear pipes recuerda agregar carpeta pipes
alias adir="ng g d" #crear directivas recuerda agregar carpeta directivas
alias alint="ng lint" #ver que todo en la carpeta de angular este bien
alias sqlinit="sudo systemctl start mysqld"
alias sqlstatus="sudo systemctl status mysqld"
alias mongoinit="sudo systemctl start mongodb"
alias mongosatus="sudo systemctl status mongodb"
alias nrun="npm run start:dev" # nest crea un live server para observar el comportamineto del backend
alias nn="nest new" #crea crea un nuevo proyecto de backa con nest
alias ncon="nest g co" #crea un nuevo controlador para nest idealmente en carpeta controllers
alias npip="nest g pipe" #crea un nuevo pipe para nest idealmente en carpeta commons
alias nserv="nest g s" #crea un nuevo service para nest idealmente en carpeta services
alias nmod="nest g mo" #crea un nuevo modulos para nest
alias angularalias="cat ~/.zshrc |grep alias |grep ng |less"
alias nestalias="cat ~/.zshrc |grep alias |grep nest |less"
alias docrun="docker run" #correr una nueva imagenes de docker en entorno la imagen es se descarga
alias docps="docker ps" #imagenes que estan corriendo
alias docpsa="docker ps -a" #muestra las imagenes que corrieron
alias docp="docker pull" #descarga imagen pero no la corre
alias docimg="docker images" #muestra las imagenes que estan instaladas en el pc
alias docsta="docker start" #inicar imagen ya descargada en segundo plano
alias diclog="docker logs" #muestra salida de imagen mediante su id
alias docex="docker exec" #ejecuta comando dentro de contenedor que ya se encuentra corriendo
alias docexit="docker exec -it" #it es de interactive terminal se elige una shell
alias docstop="docker stop" #detiene contenedor que este corriendo
alias dockeralias="cat ~/.zshrc |grep alias |grep docker |less"
alias doc="docker"
alias docbuild="docker build -t" #construlle un contenedor (espesifica carpeta en donde esta el Dockerfile)
alias dicpr="docker container prune" #mata todos los contenedores muertos o sin uso
alias dicsyspr="docker system prune" #limpia todo el entrono de docker
alias dicvolpr="docker volume prune" #elimina todos los volumenes creados por docker
alias dockill="docker rm -f $(docker ps -aq)" #elimin todos los contenedores que estan corrinedo
alias docimgkill="docker rmi -f $(docker images -a -q)" #elimina todas las imagenes de docker
alias docclearall="docker container prune;docker system prune;docker volume prune;docker rm -f $(docker ps -aq);docker rmi -f $(docker images -a -q)"
alias dart_format="dart format"
alias emu="/home/maxitox/android/emulator/emulator"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

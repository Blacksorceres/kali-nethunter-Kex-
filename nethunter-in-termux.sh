banner() {
    clear
    printf "\033[33m    _  _  __ ___ _  _ _  _ _  _ ___  __  __    \033[0m\n"
    printf "\033[36m    |\ | |__  |  |__| |  | |\ |  |  |__ |__|   \033[0m\n"
    printf "\033[32m    | \| |__  |  |  | |__| | \|  |  |__ |  \   \033[0m\n"
    printf "\033[0m\n"
    printf "     \033[32mInstalar Nethunter En Termux Facilmente \033[0m\n"
    printf "\033[0m\n"

}

install() {
    if test -f "install-nethunter-termux"; then
      printf "\033[36m Ejecutando Script install-nethunter-termux \033[0m\n"
      sleep 3
      ./install-nethunter-termux
    else
      printf "\033[36m Permitir permisos de Acceso a storage \033[0m\n"
      termux-setup-storage
      printf "\033[36m Actualizando Lista de Paquetes \033[0m\n"
      apt update
      printf "\033[36m Instalando Wget\033[0m\n"
      apt install wget
      printf "\033[36m Descargando Script install-nethunter-termux file \033[0m\n"
      wget -O install-nethunter-termux https://offs.ec/2MceZWr
      chmod +x install-nethunter-termux
      sed -i '378d' ./install-nethunter-termux
      printf "\033[36m Ejecutando ===>>> install-nethunter-termux \033[0m\n"
      sleep 2
      ./install-nethunter-termux
    fi    
}

banner
install

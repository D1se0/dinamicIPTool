#!/bin/bash

# Limpiar la pantalla
clear

# Colores para salida estética
GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"
BLUE="\e[34m"
RESET="\e[0m"
CYAN="\e[36m"
BOLD="\e[1m"
UNDERLINE="\e[4m"

# Función para verificar si un comando está instalado
check_command() {
    command -v "$1" >/dev/null 2>&1
}

# Comprobamos e instalamos Tor si no está instalado
if ! check_command tor; then
    echo -e "${YELLOW}[+]Instalando Tor...${RESET}"
    sudo apt update -y >/dev/null 2>&1 && sudo apt install -y tor >/dev/null 2>&1
else
    echo -e "${GREEN}[+]Tor ya está instalado.${RESET}"
fi

# Habilitar y arrancar el servicio de Tor
sudo systemctl start tor >/dev/null 2>&1
#sudo systemctl enable tor >/dev/null 2>&1

# Comprobamos e instalamos tornet si no está instalado
tornet_installed=true
if check_command tornet; then
    echo -e "${GREEN}[+]Tornet ya está instalado.${RESET}"
else
    echo -e "${YELLOW}[+]Instalando tornet...${RESET}"
    sudo pip install tornet >/dev/null 2>&1 || tornet_installed=false 
fi

# Si tornet no pudo instalarse, configurar entorno virtual
if [ "$tornet_installed" = false ]; then
    echo -e "${RED}[-]Error al instalar tornet."
    echo -e "${YELLOW}[+]Creando entorno virtual para Python3...${RESET}"
    if ! check_command python3; then
        echo -e "${YELLOW}[+]Instalando Python3...${RESET}"
        sudo apt update && sudo apt install -y python3 python3-venv >/dev/null 2>&1
    fi
    sudo python3 -m venv env_dinamicIP >/dev/null 2>&1
    echo -e "${GREEN}[+]Entorno virtual creado.${RESET}"
    source env_dinamicIP/bin/activate 
    echo -e "${BLUE}[+]Instalando tornet en el entorno virtual...${RESET}"
    pip install tornet >/dev/null 2>&1
fi

# Mostrar instrucciones para configurar Firefox
echo -e "${BLUE}Para configurar Firefox para usar Tor, sigue estos pasos en la terminal: ${RESET}"
echo -e "${YELLOW}Instrucciones para configurar el proxy SOCKS de Tor en Firefox:${RESET}"

cat <<EOL
1. Abre Firefox y escribe en la barra de direcciones: about:preferences
2. Haz scroll hacia abajo hasta "Configuración de red" y selecciona "Configuración..."
3. En la ventana que se abre, selecciona "Configuración manual de proxy".
4. Configura los siguientes parámetros:
   - Proxy SOCKS: 127.0.0.1
   - Puerto: 9050
   - Marca "Proxy SOCKS v5"
   - Marca "Hacer uso de DNS a través de SOCKS"

5. Haz clic en "Aceptar" para guardar los cambios.
EOL

# Leer ENTER para continuar
echo -e "${GREEN}"
read -p "[+]Presiona ENTER para continuar..."
echo -e "${RESET}"

# Comprobamos el estado de Firefox después de la configuración
echo -e "${BLUE}Continuando con la configuración de Tor...${RESET}"

# Habilitar Tor si no está corriendo
sudo systemctl start tor >/dev/null 2>&1

# Preguntar al usuario por el intervalo
echo -e "${YELLOW}"
read -p "[?]Introduce el intervalo de tiempo para cambiar la IP (en segundos): " INTERVAL
echo -e "${RESET}"

# Si el intervalo está vacío, asignamos 60 segundos como valor predeterminado
if [ -z "$INTERVAL" ]; then
    INTERVAL=60
    echo -e "${CYAN}[+]Usando el valor predeterminado de 60 segundos.${RESET}"
fi

# Ejecutar tornet
echo -e "${BLUE}Ejecutando tornet con intervalo de $INTERVAL segundos. Pulsa Ctrl+C para detener.${RESET}"
tornet --interval "$INTERVAL" --count 0

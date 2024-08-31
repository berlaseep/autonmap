#!bin/bash
#sudo nmap -p- -sS -sC -sV --min-rate=5000 -n -Pn 172.17.0.2
#Verde para info
#Rojo para error
#Azul opciones

# Colores ANSI
ROJO="$(printf '\033[31m')"
VERDE="$(printf '\033[32m')"
NARANJA="$(printf '\033[33m')"
AZUL="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"
CYAN="$(printf '\033[36m')"
BLANCO="$(printf '\033[37m')"
NEGRO="$(printf '\033[30m')"
ROJOBG="$(printf '\033[41m')"
VERDEBG="$(printf '\033[42m')"
NARANJABG="$(printf '\033[43m')"
AZULBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"
CYANBG="$(printf '\033[46m')"
BLANCOBG="$(printf '\033[47m')"                                                                                                                                                                                                            
NEGROBG="$(printf '\033[40m')"                                                                                                                                                                                                             
REINICIAR="$(printf '\e[0m')"                                                                                                                                                                                                              
                                                                                                                                                                                                                                           
                                                                                                                                                                                                                                           
                                                                                                                                                                                                                                           
                                                                                                                                                                                                                                           
                                                                                                                                                                                                                                           
                                                                                                                                                                                                                                           
                                                                                                                                                                                                                                           
                                                                                                                                                                                                                                           
                                                                                                                                                                                                                                           
echo -e "  █████  ██    ██ ████████  ██████  ███    ██ ███    ███  █████  ██████  "                                                                                                                                                        
echo -e " ██   ██ ██    ██    ██    ██    ██ ████   ██ ████  ████ ██   ██ ██   ██ "                                                                                                                                                        
echo -e " ███████ ██    ██    ██    ██    ██ ██ ██  ██ ██ ████ ██ ███████ ██████  "                                                                                                                                                        
echo -e " ██   ██ ██    ██    ██    ██    ██ ██  ██ ██ ██  ██  ██ ██   ██ ██      "                                                                                                                                                        
echo -e " ██   ██  ██████     ██     ██████  ██   ████ ██      ██ ██   ██ ██      "                                                                                                                                                        
echo -e "                                                                         "                                                                                                                                                        
echo -e "                                                                         "                                                                                                                                                        
       echo -e "${MAGENTA}Version 1.0${REINICIAR}"  "${CYAN}By ZAFIRO${REINICIAR}"                                                                                                                                                         
                                                                                                                                                                                                                                           
read -p "${VERDE}Introduzca la IP:${REINICIAR}" IP


echo -e "[1]Completo" "[Puertos]"
echo -e "[3]Puertos+Version" "[4]Salir"




read -p "${AZUL}¿Como quieres el escaneo?${REINICIAR}" nmap


if [ "$nmap" == "1" ]; then

echo -e "${VERDE}Inicializando escaneo ...${REINICIAR}"

nmap -p- -sS -sC -sV --min-rate=5000 -n -Pn "$IP"

elif [ "$nmap" == "2" ]; then

echo -e "${VERDE}Inicializando escaneo ...${REINICIAR}"

nmap -p- "$IP"

elif [ "$nmap" == "3" ]; then

echo -e "${VERDE}Inicializando escaneo ...${REINICIAR}"
nmap -p- -sV "$IP"

elif [ "$nmap" == "4" ]; then

echo -e "${VERDE}Saliendo ...${REINICIAR}"
sleep 3
exit 0

else

echo -e "${ROJO}Opcion no valida escoja: 1,2,3 o 4${REINICIAR}"
echo -e "${ROJO}Saliendo ...${REINICIAR}"

sleep 3
exit 0


fi

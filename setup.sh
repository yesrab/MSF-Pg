clear
read -p "$(echo -e "\e[1;97m Select a os:-\n$white 1)Kali-linux(nethunter)\n 2)Termux\n$green >>> ")" var
if [ $var == "1" ]; then
	echo -e "\e[1;92m[ * ] Installing............."
	apt update && apt upgrade
	apt install metasploit-framework
	apt install zipalign
	apt install default-jdk
	apt install apktool
	echo
	cp msf-pg /usr/bin/ 
	cp .banner1.sh /usr/bin/banner1.sh
	chmod +x /usr/bin/msf-pg /usr/bin/banner1.sh
	echo -e "\e[1;92mComplete. Now you can start this tool anyware just type(msf-pg)"
else
	if [ -d $HOME/metasploit-framework ];then
		echo
		echo -e "You already hav metasploit"
		echo
		cp msf-pg $PREFIX/bin
		cp .banner1.sh $PREFIX/bin/banner1.sh
		chmod +x $PREFIX/bin/msf-pg $PREFIX/bin/banner1.sh
		echo -e "\e[1;92mComplete. Now you can start this tool anyware just type(msf-pg)"
	else
		echo 
		echo -e "We don't found metasploit"
		read -p "$(echo -e "Do you want to install it [ y/n ] >")" var1
		if [ $var1 == "y" -o $var1 == "Y" ];then
			apt install axel
			axel -a https://raw.githubusercontent.com/Hax4us/Metasploit_termux/master/metasploit.sh -o $HOME
			chmod -x $HOME/metasploit.sh
			bash $HOME/metasploit.sh
		else
			echo ""
			echo "Good byy dud."
		fi
	fi
fi
	
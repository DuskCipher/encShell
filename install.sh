
#!/bin/bash
# UCH-2009 Encrypt/Decrypt Tools Installer
# Updated for Replit Environment

__version__="2.0"

## ANSI colors (FG & BG)
R="$(printf '\033[31m')"  
GR="$(printf '\033[32m')"  
O="$(printf '\033[33m')"  
BL="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  
CYAN="$(printf '\033[36m')"  
WT="$(printf '\033[37m')" 
BLK="$(printf '\033[30m')"
RBG="$(printf '\033[41m')"  
GRBG="$(printf '\033[42m')"  
OBG="$(printf '\033[43m')"  
BLBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  
CYANBG="$(printf '\033[46m')"  
WTBG="$(printf '\033[47m')" 
BLKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

#------------------------ Check Internet Status--------------------#
check_status() {
    echo -ne "\n${GR}[${WT}+${GR}]${CYAN} Internet Status : "
    timeout 3s curl -fIs "https://api.github.com" > /dev/null
    [ $? -eq 0 ] && echo -e "${GR}Online${WT}" || echo -e "${R}Offline${WT}"
}

#------------------------Script termination------------------------$
exit_on_signal_SIGINT() {
    { printf "\n\n%s\n\n" "${R}[${WT}!${R}]${R} Program Interrupted." 2>&1; reset_color; }
    exit 0
}

exit_on_signal_SIGTERM() {
    { printf "\n\n%s\n\n" "${R}[${WT}!${R}]${R} Program Terminated." 2>&1; reset_color; }
    exit 0
}

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM

#-------------------------- Reset terminal colors------------------------#
reset_color() {
    tput sgr0   # reset attributes
    tput op     # reset color
    return
}

#-------------------------------- Exit message-------------------------#
msg_exit() {
    { clear; banner1; }
    echo -e "${GRBG}${BLK} Thank you for using UCH-2009 Tools. Have a good day.${RESETBG}\n"
    { reset_color; exit 0; }
    sleep 2
    clear
}

#---------------------------- Banner 1 --------------------------------#
banner1() {
printf "╦ ╦ ╔═╗ ╦ ╦   ╔═╗ ╔═╗ ╔═╗ ╔═╗  \e[0m\n"
printf "║ ║ ║   ╠═╣   ╔═╝ ║ ║ ║ ║ ║ ║  \e[0m\n"
printf "╚═╝ ╚═╝ ╩ ╩   ╚═╝ ╚═╝ ╚═╝ ╚═╝  \e[0m\n"
printf "  ╔═╗ ╔╗╔ ╔═╗ ╦═╗ ╦ ╦ ╔═╗ ╔╦╗ \e[0m\n"
printf "  ║╣  ║║║ ║   ╠╦╝ ╚╦╝ ╠═╝  ║  \e[0m\n"
printf "  ╚═╝ ╝╚╝ ╚═╝ ╩╚═  ╩  ╩    ╩  \e[0m\n"
}

#---------------------------- Banner --------------------------------#
banner() {
clear
check_status
printf "\e[0m\n"
printf "\e[0m\e[1;32m   ╦ ╦ ╔═╗ ╦ ╦   ╔═╗ ╔═╗ ╔═╗ ╔═╗   ╔╦╗ ╔═╗ ╔═╗ ╦   ╔═╗   \e[0m\n"
printf "\e[0m\e[1;32m   ║ ║ ║   ╠═╣   ╔═╝ ║ ║ ║ ║ ║ ║    ║  ║ ║ ║ ║ ║   ╚═╗   \e[0m\n"
printf "\e[0m\e[1;32m   ╚═╝ ╚═╝ ╩ ╩   ╚═╝ ╚═╝ ╚═╝ ╚═╝    ╩  ╚═╝ ╚═╝ ╩═╝ ╚═╝   \e[0m\n"
printf "\e[1;32m                        Encrypt/Decrypt \e[0m\e[1;33mBash Tools \e[0m\e[1;31mVersion : ${__version__}    \e[0m\n"
printf "\e[0m\n"
printf "   \e[0m\e[1;37m┌─────────────────────────────────────────────┐ \e[0m\n"
printf "\e[0m\e[1;33m   \e[0m\e[1;37m│  \e[0m\e[1;33mCreated By UCH-2009 \e[0m\e[1;31m(\e[0m\e[1;33m Encrypt/Decrypt Tools \e[0m\e[1;31m)  \e[0m\e[1;37m│  \e[0m\n"
printf "   └─────────────────────────────────────────────┘"
printf "\e[0m\n"
}

#---------------------------INSTALL DEPENDENCIES-----------------------#
install_dependencies() {
  banner
  echo " "
  printf " \e[0m\e[1;93mSETUP ENVIRONMENT UNTUK TOOLS ENCRYPT/DECRYPT \e[0m\e[1;91m!! \e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m SKIP SETUP\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m INSTALL DEPENDENCIES\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m03\e[0m\e[1;91m]\e[0m\e[1;93m UPDATE TOOLS\e[0m\n"
printf "\e[0m\n"
read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' setup

if [[ $setup == 1 || $setup == 01 ]]; then
    run_tools
elif [[ $setup == 2 || $setup == 02 ]]; then
    install_packages
elif [[ $setup == 3 || $setup == 03 ]]; then
    update    
else
    printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
    sleep 1
    install_dependencies
fi
}

install_packages() {
    banner
    echo " "
    printf " \e[0m\e[1;93mINSTALLING DEPENDENCIES FOR REPLIT ENVIRONMENT \e[0m\e[1;91m!! \e[0m\n"
    printf "\e[0m\n"
    
    echo "╦ ╔╗╔ ╔═╗ ╔╦╗ ╔═╗ ╦   ╦   ╦ ╔╗╔ ╔═╗  "
    echo "║ ║║║ ╚═╗  ║  ╠═╣ ║   ║   ║ ║║║ ║ ╦ "
    echo "╩ ╝╚╝ ╚═╝  ╩  ╩ ╩ ╩═╝ ╩═╝ ╩ ╝╚╝ ╚═╝ ╻ ╻ ╻ ╻ ╻  "
    echo " "
    echo $O"Installing Node.js dan packages untuk bash obfuscation..."
    echo " "
    
    # Update npm ke versi terbaru
    echo $CYAN"Updating npm to latest version..."
    npm install -g npm@latest
    
    # Install bash-obfuscate package
    echo $O"Installing bash-obfuscate..."
    if ! command -v bash-obfuscate &> /dev/null; then
        npm install -g bash-obfuscate
        if [ $? -eq 0 ]; then
            echo $GR"✓ bash-obfuscate installed successfully!"
        else
            echo $R"✗ Failed to install bash-obfuscate"
            echo $O"Trying alternative installation method..."
            npm install bash-obfuscate
            if [ $? -eq 0 ]; then
                echo $GR"✓ bash-obfuscate installed locally!"
                # Create symlink for global access
                ln -sf $(pwd)/node_modules/.bin/bash-obfuscate /usr/local/bin/bash-obfuscate 2>/dev/null || true
            fi
        fi
    else
        echo $GR"✓ bash-obfuscate already installed!"
    fi
    
    # Check core dependencies
    echo $O"Checking core dependencies..."
    
    if command -v python3 &> /dev/null; then
        echo $GR"✓ Python3 is available!"
    else
        echo $R"✗ Python3 not found!"
        exit 1
    fi
    
    if command -v nano &> /dev/null; then
        echo $GR"✓ nano editor is available!"
    else
        echo $R"✗ nano editor not found"
    fi
    
    # Ensure coba.sh exists as sample
    if [ ! -f "coba.sh" ]; then
        echo $O"Sample script coba.sh not found, but tools will work with any .sh files"
    else
        echo $GR"✓ Sample script coba.sh is available!"
        chmod +x coba.sh
    fi
    
    # Verify main installation
    echo " "
    echo $CYAN"Verifying tools..."
    echo "=================="
    
    if command -v bash-obfuscate &> /dev/null; then
        echo $GR"✓ bash-obfuscate: READY"
    else
        echo $R"✗ bash-obfuscate: NOT FOUND"
    fi
    
    echo " "
    echo $GR"Available script files:"
    ls -1 *.sh 2>/dev/null | grep -v install.sh | grep -v index.sh || echo $O"No script files found"
    
    sleep 2
    clear
    echo " "
    printf " \e[0m\e[1;93mSETUP SELESAI! TOOLS SIAP DIGUNAKAN!\e[0m\e[1;91m!! \e[0m\n"
    printf " \e[0m\e[1;92mBuat file script .sh Anda untuk encrypt/decrypt\e[0m\n"
    printf "\e[0m\n"
    sleep 2
    run_tools
}

#----------------------------RUN TOOLS-----------------#
run_tools() {
    clear
    printf "\e[0m\n"
    sleep 1
    printf "\e[1;31mUCH-2009 Encrypt/Decrypt Tools\e[0m" 
    echo 
    echo -e "\E[1;33m:::::::::::::: \e[97m  READY TO USE  \E[1;33m:::::::::::::::"
    printf "\e[0m\n"
    printf "\e[97m╦═╗ ╦ ╦ ╔╗╔   ╔╦╗ ╔═╗ ╔═╗ ╦   ╔═╗ \e[0m\n"
    printf "\e[97m╠╦╝ ║ ║ ║║║    ║  ║ ║ ║ ║ ║   ╚═╗ \e[0m\n"
    printf "\e[97m╩╚═ ╚═╝ ╝╚╝    ╩  ╚═╝ ╚═╝ ╩═╝ ╚═╝ \e[0m\n"
    printf "\e[0m\n"
    printf " \e[0m\e[1;93mAPAKAH ANDA INGIN MENJALANKAN TOOLS SEKARANG? \e[0m\e[1;91m!! \e[0m\n"
    printf "\e[0m\n"
    printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m NO\e[0m\n"
    printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m YES - RUN TOOLS\e[0m\n"
    printf "\e[0m\n"
    read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' runtool

    if [[ $runtool == 1 || $runtool == 01 ]]; then
        msg_exit
    elif [[ $runtool == 2 || $runtool == 02 ]]; then
        clear
        printf "\e[0m\n"
        printf "\e[97m╦   ╔═╗ ╦ ╦ ╔╗╔ ╔═╗ ╦ ╦ ╦ ╔╗╔ ╔═╗ \e[0m\n"
        printf "\e[97m║   ╠═╣ ║ ║ ║║║ ║   ╠═╣ ║ ║║║ ║ ╦ \e[0m\n"
        printf "\e[97m╩═╝ ╩ ╩ ╚═╝ ╝╚╝ ╚═╝ ╩ ╩ ╩ ╝╚╝ ╚═╝ \e[0m\n"
        sleep 1
        echo ""
        printf " \e[0m\e[1;93mMENJALANKAN TOOLS ENCRYPT/DECRYPT... \e[0m\e[1;91m!! \e[0m\n"
        printf "\e[0m\n"
        sleep 2
        echo $GR"STARTING TOOLS..."
        clear
        python3 main.py
    else
        printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
        sleep 1
        run_tools
    fi
}

update() {
clear
printf "\e[0m\n"
printf "\e[0m\e[1;32m╦ ╦ ╔═╗ ╔╦╗ ╔═╗ ╔╦╗ ╔═╗  \e[0m\n"
printf "\e[0m\e[1;32m║ ║ ╠═╝  ║║ ╠═╣  ║  ║╣\e[0m\n"
printf "\e[0m\e[1;32m╚═╝ ╩   ═╩╝ ╩ ╩  ╩  ╚═╝ \e[0m\n"
cd $HOME 
rm -rf encShell
git clone https://github.com/DuskCipher/encShell
cd encShell
sleep 1
clear
echo ""
printf " \e[0m\e[1;32mUPDATE SELESAI AKAN MENCOBA MASUK KEMBALI \e[0m\e[1;91m!! \e[0m\n"
printf "\e[0m\n"
sleep 2
bash index.sh
clear
}
# Cek apakah tools sudah ready
check_tools() {
    if [ -f "main.py" ]; then
        echo $GR"✓ Tools UCH-2009 detected!"
        install_dependencies
    else
        echo $R"✗ main.py not found!"
        echo "Please make sure you have the encrypt/decrypt tools in this directory."
        exit 1
    fi
}

# Main execution
echo "DuskCipher Encrypt/Decrypt Tools Setup"
echo "======================================"
check_tools

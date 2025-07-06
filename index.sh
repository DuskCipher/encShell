
#!/bin/bash

# UCH-2009 Encrypt/Decrypt Tools - Main Entry Point
# File panduan sebelum menggunakan tools

## ANSI colors
R="$(printf '\033[31m')"  
GR="$(printf '\033[32m')"  
O="$(printf '\033[33m')"  
BL="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  
CYAN="$(printf '\033[36m')"  
WT="$(printf '\033[37m')" 
RESETBG="$(printf '\e[0m\n')"

clear

# Banner utama
printf "\e[0m\n"
printf "\e[1;32m   ╦ ╦ ╔═╗ ╦ ╦   ╔═╗ ╔═╗ ╔═╗ ╔═╗   ╔╦╗ ╔═╗ ╔═╗ ╦   ╔═╗   \e[0m\n"
printf "\e[1;32m   ║ ║ ║   ╠═╣   ╔═╝ ║ ║ ║ ║ ║ ║    ║  ║ ║ ║ ║ ║   ╚═╗   \e[0m\n"
printf "\e[1;32m   ╚═╝ ╚═╝ ╩ ╩   ╚═╝ ╚═╝ ╚═╝ ╚═╝    ╩  ╚═╝ ╚═╝ ╩═╝ ╚═╝   \e[0m\n"
printf "\e[1;32m                        Encrypt/Decrypt \e[0m\e[1;33mBash Tools \e[0m\e[1;31mPanduan Penggunaan    \e[0m\n"
printf "\e[0m\n"

printf "   \e[0m\e[1;37m┌───────────────────────────────────────────────────────┐ \e[0m\n"
printf "\e[0m\e[1;33m   \e[0m\e[1;37m│  \e[0m\e[1;33mCreated By DuskCipher \e[0m\e[1;31m(\e[0m\e[1;33m Encrypt/Decrypt Tools \e[0m\e[1;31m)  \e[0m\e[1;37m│  \e[0m\n"
printf "   └───────────────────────────────────────────────────────┘"
printf "\e[0m\n\n"

# Pesan sambutan
printf " \e[0m\e[1;93m🔐 SELAMAT DATANG DI UCH-2009 ENCRYPT/DECRYPT TOOLS! 🔐\e[0m\n"
printf "\e[0m\n"

# Panduan penggunaan
printf " \e[0m\e[1;96m📋 PANDUAN PENGGUNAAN:\e[0m\n"
printf " \e[0m\e[1;37m══════════════════════\e[0m\n"
printf "\e[0m\n"

printf " \e[0m\e[1;93m1. BUAT SCRIPT TERLEBIH DAHULU\e[0m\n"
printf "    \e[0m\e[1;97m├─ Gunakan nano untuk membuat script bash\e[0m\n"
printf "    \e[0m\e[1;97m├─ Contoh: \e[0m\e[1;32mnano test.sh\e[0m\n"
printf "    \e[0m\e[1;97m├─ Ketik script bash Anda di dalam editor\e[0m\n"
printf "    \e[0m\e[1;97m├─ Tekan Ctrl+O untuk save\e[0m\n"
printf "    \e[0m\e[1;97m└─ Tekan Ctrl+X untuk keluar\e[0m\n"
printf "\e[0m\n"

printf " \e[0m\e[1;93m2. JALANKAN TOOLS\e[0m\n"
printf "    \e[0m\e[1;97m├─ Setelah script dibuat, ketik: \e[0m\e[1;32mbash install.sh\e[0m\n"
printf "    \e[0m\e[1;97m├─ Tools akan melakukan setup otomatis\e[0m\n"
printf "    \e[0m\e[1;97m└─ Pilih opsi encrypt/decrypt yang diinginkan\e[0m\n"
printf "\e[0m\n"

# Contoh script
printf " \e[0m\e[1;96m📝 CONTOH SCRIPT BASH:\e[0m\n"
printf " \e[0m\e[1;37m════════════════════\e[0m\n"
printf "\e[0m\n"

printf " \e[0m\e[1;33m#!/bin/bash\e[0m\n"
printf " \e[0m\e[1;37mecho \"Hello UCH-2009 Tools!\"\e[0m\n"
printf " \e[0m\e[1;37mecho \"Script ini akan di-encrypt/decrypt\"\e[0m\n"
printf " \e[0m\e[1;37m# Tambahkan kode bash Anda di sini\e[0m\n"
printf "\e[0m\n"

# Opsi menu
printf " \e[0m\e[1;96m🚀 PILIHAN AKSI:\e[0m\n"
printf " \e[0m\e[1;37m══════════════\e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m1\e[0m\e[1;91m]\e[0m\e[1;93m BUAT SCRIPT BARU (nano editor)\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m2\e[0m\e[1;91m]\e[0m\e[1;93m LANGSUNG KE TOOLS (jika sudah ada script)\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m3\e[0m\e[1;91m]\e[0m\e[1;93m LIHAT FILE YANG TERSEDIA\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m4\e[0m\e[1;91m]\e[0m\e[1;93m KELUAR\e[0m\n"
printf "\e[0m\n"

read -p $'  \e[1;31m>>\e[0m\e[1;96m Pilih opsi (1-4): \e[0m' pilihan

case $pilihan in
    1|01)
        printf "\e[0m\n"
        printf " \e[0m\e[1;93m📝 MEMBUAT SCRIPT BARU\e[0m\n"
        printf " \e[0m\e[1;37m═══════════════════\e[0m\n"
        printf "\e[0m\n"

        read -p $' \e[1;31m>>\e[0m\e[1;96m Masukkan nama file (contoh: test.sh): \e[0m' namafile

        if [[ ! $namafile == *.sh ]]; then
            namafile="${namafile}.sh"
        fi

        printf " \e[0m\e[1;92m✓ Membuka nano editor untuk file: $namafile\e[0m\n"
        printf " \e[0m\e[1;93m💡 Tips: Ctrl+O untuk save, Ctrl+X untuk keluar\e[0m\n"
        printf "\e[0m\n"
        sleep 2

        nano "$namafile"

        if [ -f "$namafile" ]; then
            chmod +x "$namafile"
            printf "\e[0m\n"
            printf " \e[0m\e[1;92m✓ File $namafile berhasil dibuat dan diberi permission execute!\e[0m\n"
            printf " \e[0m\e[1;93m🚀 Sekarang menjalankan tools encrypt/decrypt...\e[0m\n"
            printf "\e[0m\n"
            sleep 2
            bash install.sh
        else
            printf "\e[0m\n"
            printf " \e[0m\e[1;91m✗ File tidak dibuat atau disimpan.\e[0m\n"
            printf " \e[0m\e[1;93m🔄 Menjalankan ulang index.sh...\e[0m\n"
            sleep 2
            bash index.sh
        fi
        ;;

    2|02)
        printf "\e[0m\n"
        printf " \e[0m\e[1;93m🚀 MENJALANKAN TOOLS ENCRYPT/DECRYPT\e[0m\n"
        printf " \e[0m\e[1;37m═══════════════════════════════════\e[0m\n"
        printf "\e[0m\n"
        sleep 1
        bash install.sh
        ;;

    3|03)
        printf "\e[0m\n"
        printf " \e[0m\e[1;93m📁 FILE SCRIPT YANG TERSEDIA:\e[0m\n"
        printf " \e[0m\e[1;37m════════════════════════════\e[0m\n"
        printf "\e[0m\n"

        # Cek file .sh yang ada
        shfiles=$(ls *.sh 2>/dev/null | grep -v install.sh | grep -v index.sh)
        if [ -z "$shfiles" ]; then
            printf " \e[0m\e[1;91m✗ Tidak ada file script (.sh) yang ditemukan\e[0m\n"
            printf " \e[0m\e[1;93m💡 Silakan buat script terlebih dahulu (pilih opsi 1)\e[0m\n"
        else
            printf " \e[0m\e[1;92m✓ File script yang tersedia:\e[0m\n"
            for file in $shfiles; do
                size=$(ls -lh "$file" | awk '{print $5}')
                printf "   \e[0m\e[1;97m├─ $file \e[0m\e[1;36m($size)\e[0m\n"
            done
            printf "\e[0m\n"
            printf " \e[0m\e[1;93m🚀 Ingin langsung ke tools? (y/n): \e[0m"
            read -r jawab
            if [[ $jawab == "y" || $jawab == "Y" || $jawab == "yes" ]]; then
                bash install.sh
            fi
        fi
        printf "\e[0m\n"
        printf " \e[0m\e[1;93m🔄 Kembali ke menu utama...\e[0m\n"
        sleep 2
        bash index.sh
        ;;

    4|04)
        printf "\e[0m\n"
        printf " \e[0m\e[1;93m👋 TERIMA KASIH TELAH MENGGUNAKAN UCH-2009 TOOLS!\e[0m\n"
        printf " \e[0m\e[1;92m🔐 Semoga tools encrypt/decrypt ini bermanfaat\e[0m\n"
        printf " \e[0m\e[1;96m📧 Created by UCH-2009\e[0m\n"
        printf "\e[0m\n"
        exit 0
        ;;

    *)
        printf "\e[0m\n"
        printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Pilihan tidak valid! \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
        printf " \e[0m\e[1;93m🔄 Menjalankan ulang dalam 2 detik...\e[0m\n"
        sleep 2
        bash index.sh
        ;;
esac

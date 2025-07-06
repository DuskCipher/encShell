#!/bin/bash

# Script sederhana untuk testing encrypt/decrypt
echo "=== Script Testing DuskCipher ==="
echo "Halo! Ini adalah script untuk testing tools encrypt/decrypt"
echo "Script ini dibuat pada: $(date)"

# Fungsi sederhana
function tampilkan_info() {
    echo "Nama script: coba.sh"
    echo "Versi: 1.0"
    echo "Creator: DuskCipher"
}

# Panggil fungsi
tampilkan_info

# Loop sederhana
echo "Menghitung 1 sampai 5:"
for i in {1..5}; do
    echo "Angka: $i"
    sleep 1
done

echo "Script selesai dijalankan!"
echo "=== Terima kasih telah menggunakan tools DuskCipher ==="

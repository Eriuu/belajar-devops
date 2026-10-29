#!/bin/bash

# Ambil tanggal dan waktu saat ini
TANGGAL=$(date +%Y%m%d_%H%M%S)
FOLDER_DEST="backup_$TANGGAL"

# Buat folder backup baru
mkdir -p "$FOLDER_DEST"

# Salin file log ke folder backup
cp -r logs/* "$FOLDER_DEST/"

echo "[SUCCESS] Backup log selesai dibuat di folder: $FOLDER_DEST"

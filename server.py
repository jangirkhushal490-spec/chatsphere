import http.server
import socketserver
import socket
import webbrowser
import os

PORT = 3000
DIRECTORY = os.path.dirname(os.path.abspath(__file__))

def get_local_ip():
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        s.connect(("8.8.8.8", 80))
        ip = s.getsockname()[0]
        s.close()
        return ip
    except Exception:
        return "127.0.0.1"

class Handler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=DIRECTORY, **kwargs)

    def end_headers(self):
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Cache-Control', 'no-cache, no-store, must-revalidate')
        super().end_headers()

if __name__ == "__main__":
    local_ip = get_local_ip()
    mobile_url = f"http://{local_ip}:{PORT}"
    qr_url = f"https://api.qrserver.com/v1/create-qr-code/?size=300x300&data={mobile_url}"

    print("=" * 65)
    print("🚀 CHATSPHERE - MOBILE & DESKTOP SERVER RUNNING")
    print("=" * 65)
    print(f"💻 On this PC:           http://localhost:{PORT}")
    print(f"📱 On Mobile Phone:      {mobile_url}")
    print(f"📷 Scan QR on Phone:     {qr_url}")
    print("=" * 65)
    print("💡 MOBILE TIPS:")
    print(" 1. Make sure your Phone and PC are connected to the SAME Wi-Fi.")
    print(" 2. If it doesn't load on phone, run 'allow_firewall.bat' as Admin.")
    print(" 3. Or drag the 'chatsphere' folder to https://app.netlify.com/drop")
    print("    to get an instant free public link for any phone anywhere!")
    print("=" * 65)
    print("Press Ctrl+C to stop the server anytime.\n")
    
    # Open local browser
    webbrowser.open(f"http://localhost:{PORT}")
    
    with socketserver.TCPServer(("", PORT), Handler) as httpd:
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            print("\nShutting down ChatSphere server.")

# ChatSphere - Next-Gen Real-Time Mobile & Desktop Chat Platform

A complete, standalone chat platform featuring **full mobile responsive navigation**, **GunDB & WebRTC real-time sync**, 6 themes, unique usernames, and persistent accounts.

---

## 📱 Mobile Optimizations Implemented

1. **WhatsApp / Telegram Mobile Navigation:**
   * On mobile phones, you start on the **Chats & Contacts list**.
   * Tapping any conversation smoothly transitions to the **full-screen chat view**.
   * A prominent **`< Back` button** in the header returns you to your contacts list.
2. **No Unwanted Auto-Zoom:**
   * Text inputs use standard mobile scale (`16px`), preventing iOS Safari and Chrome Android from zooming in and distorting the page.
3. **Dynamic Viewport Height (`100dvh`):**
   * Uses modern dynamic viewport height so the mobile browser address bar and soft keyboard don't clip the message input.
4. **Decentralized Real-Time Sync (GunDB + WebRTC):**
   * Syncs messages across mobile phones and desktop computers across **mobile cellular data (4G/5G)** and Wi-Fi networks worldwide!

---

## 🚀 How to Run on Mobile

### Option 1: 100% Free Public Link (Recommended for Phones)
1. Go to **[Netlify Drop](https://app.netlify.com/drop)** in your browser.
2. Drag and drop the `chatsphere` folder onto the page.
3. You will immediately get an `https://...` link.
4. Open this link on your phone in Google Chrome or Safari. It works anywhere, anytime!

### Option 2: Local Wi-Fi Network
1. Right-click **`allow_firewall.bat`** and select **Run as Administrator** (this allows other devices on your Wi-Fi to reach port 3000).
2. Double-click **`run_network_chat.bat`**.
3. It will display:
   ```text
   📱 On Mobile Phone: http://172.16.15.100:3000
   ```
4. Connect your phone to the **same Wi-Fi** as your PC and open that address in your mobile browser.

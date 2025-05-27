# Port Forwarding Guide for Terraria Server

## Steps to Allow External Connections

### 1. Find Your Local IP Address
Open Command Prompt and run:
```cmd
ipconfig
```
Look for "IPv4 Address" under your active network adapter (usually something like 192.168.1.XXX)

### 2. Set Up Port Forwarding on Your Router

1. **Access your router's admin panel:**
   - Open a web browser
   - Type your router's IP (usually `192.168.1.1` or `192.168.0.1`)
   - Login with your router credentials

2. **Find Port Forwarding settings:**
   - Look for: "Port Forwarding", "Virtual Server", "NAT", or "Applications & Gaming"
   - Location varies by router brand

3. **Create a new port forwarding rule:**
   - **Service Name:** Terraria Server
   - **External Port:** 7777
   - **Internal Port:** 7777
   - **Protocol:** TCP (or Both/All)
   - **Internal IP:** Your computer's IP from step 1
   - **Enable:** Yes/On

4. **Save and apply the settings**

### 3. Find Your Public IP
Visit https://whatismyipaddress.com to find your public IP address.
This is what external players will use to connect.

### 4. Test the Connection
1. Start your Terraria server
2. Have a friend connect using: `YOUR_PUBLIC_IP:7777`
3. You can test if port is open at: https://www.yougetsignal.com/tools/open-ports/

## Common Router Interfaces

### Netgear
- Login to routerlogin.net
- Dynamic DNS > Add Custom Service
- Or Advanced > Setup > Port Forwarding

### Linksys
- Login to router IP
- Security > Apps and Gaming > Single Port Forwarding

### TP-Link
- Login to router IP
- Advanced > NAT Forwarding > Virtual Servers

### ASUS
- Login to router IP
- WAN > Virtual Server / Port Forwarding

### D-Link
- Login to router IP
- Advanced > Port Forwarding

## Troubleshooting

### Port Still Closed?
1. **Check Windows Firewall:** Run `setup-firewall.bat` as Administrator
2. **Antivirus Software:** May need to add exception for TShock.Server.exe
3. **ISP Blocking:** Some ISPs block certain ports
4. **Double NAT:** If you have multiple routers, configure both
5. **CGNAT:** Contact ISP if they use Carrier-Grade NAT

### Alternative: Use a VPN Service
If port forwarding doesn't work:
- **Hamachi** - Creates virtual LAN
- **ZeroTier** - Modern alternative to Hamachi
- **Tailscale** - Easy to use VPN
- **ngrok** - Tunneling service (for testing)

### Security Tips
1. **Use a password** in serverconfig.txt
2. **Whitelist players** if possible
3. **Monitor server logs** for suspicious activity
4. **Keep TShock updated** for security patches
5. **Consider using non-default port** (change in serverconfig.txt and router)

## Dynamic IP Address?
If your public IP changes:
1. Use a Dynamic DNS service (DuckDNS, No-IP)
2. Or share new IP with players when it changes
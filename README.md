# Terraria TShock Server (Windows)

This is a dedicated Terraria server running TShock 5.2 on Windows.

## 📋 Prerequisites

- Windows 10/11 or Windows Server
- .NET Desktop Runtime 6.0 ([Download here](https://dotnet.microsoft.com/download/dotnet/6.0))
- Administrator access (for firewall configuration)

## 🚀 Quick Start

### Option 1: Simple Batch File (Recommended)
Double-click `start-server.bat` or run in Command Prompt:
```cmd
start-server.bat
```
The server will:
- Start with automatic timestamps on all output
- Save logs to `logs\server_YYYYMMDD.log`
- Show all activity in the console window

### Option 2: PowerShell Management Script
Open PowerShell and run:
```powershell
.\server-manager.ps1 start    # Start server
.\server-manager.ps1 stop     # Stop server
.\server-manager.ps1 restart  # Restart server
.\server-manager.ps1 status   # Check if running
```

**Note:** First time PowerShell users may need to run:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## ⚙️ Configuration

### Server Settings
Edit `serverconfig.txt` to customize:
- `worldname` - Name for your world
- `port` - Server port (default: 7777)
- `maxplayers` - Maximum players (default: 16)
- `password` - Server password (blank = no password)
- `difficulty` - 0=classic, 1=expert, 2=master, 3=journey
- `autocreate` - World size (1=small, 2=medium, 3=large)

### TShock Settings
Additional configuration in `tshock\config.json` after first run.

## 🌐 Connecting to Your Server

### Local Connection (Same Computer)
- IP: `localhost:7777` or `127.0.0.1:7777`

### LAN Connection (Same Network)
1. Find your local IP: Run `ipconfig` in Command Prompt
2. Look for "IPv4 Address" (usually `192.168.x.x`)
3. Connect using: `YOUR_LOCAL_IP:7777`

### Internet Connection (External Players)
1. Configure firewall: Run `setup-firewall.bat` as Administrator
2. Set up port forwarding on your router (see Port Forwarding section)
3. Find your public IP: Visit https://whatismyipaddress.com
4. Share with players: `YOUR_PUBLIC_IP:7777`

## 🔧 Port Forwarding Setup

### Quick Steps
1. Access router admin panel (usually `192.168.1.1`)
2. Find "Port Forwarding" or "Virtual Server" section
3. Add new rule:
   - **External Port:** 7777
   - **Internal Port:** 7777
   - **Protocol:** TCP
   - **Internal IP:** Your computer's local IP
4. Save and apply

### Router-Specific Guides
See `PORT_FORWARDING_GUIDE.md` for detailed instructions by router brand.

## 👤 Admin Setup

### First Time Admin
1. Join your server
2. Use `/setup 714592` (check `tshock\setup-code.txt` for your code)
3. Create your admin account
4. The setup code expires after use

### Common Admin Commands
- `/ban <player>` - Ban a player
- `/kick <player>` - Kick a player
- `/tp <player>` - Teleport to player
- `/give <item> <amount>` - Give items
- `/time noon` - Set time to noon
- `/godmode` - Toggle god mode

## 📁 Directory Structure

```
Terraria/
├── start-server.bat          # Main server launcher
├── server-manager.ps1        # Advanced management script
├── setup-firewall.bat        # Firewall configuration
├── serverconfig.txt          # Server configuration
├── TShock.Server.exe         # Server executable
├── logs/                     # Server logs with timestamps
├── worlds/                   # World saves
├── tshock/                   # TShock data
│   ├── config.json          # TShock configuration
│   ├── setup-code.txt       # Admin setup code
│   └── logs/                # TShock specific logs
└── ServerPlugins/           # TShock plugins folder
```

## 🛠️ Troubleshooting

### Server Won't Start
- Install .NET Desktop Runtime 6.0
- Run as Administrator
- Check if port 7777 is already in use

### Connection Issues
- **Local:** Use `localhost` or `127.0.0.1`
- **LAN:** Check Windows Firewall settings
- **Internet:** Verify port forwarding and public IP

### Performance Issues
- Reduce max players in `serverconfig.txt`
- Close unnecessary programs
- Consider upgrading server hardware

## 📝 Server Console Commands

While running, type in the server console:
- `help` - List all commands
- `exit` - Safely stop server
- `save` - Force world save
- `say <message>` - Broadcast to all players
- `kick <player> <reason>` - Kick a player
- `ban <player>` - Ban a player
- `time <day/night/noon>` - Change time
- `rain <on/off>` - Toggle rain

## 🔒 Security Tips

1. **Use a password** in `serverconfig.txt`
2. **Regular backups** of your worlds folder
3. **Monitor logs** for suspicious activity
4. **Keep TShock updated** for security patches
5. **Whitelist players** if running a private server

## 📚 Additional Resources

- [TShock Documentation](https://tshock.readme.io/)
- [Terraria Wiki](https://terraria.wiki.gg/)
- [TShock Commands](https://tshock.readme.io/docs/commands)

## 💾 Backup Reminder

Your worlds are saved in the `worlds/` folder. Back them up regularly!

---
*Server powered by TShock 5.2 for Terraria 1.4.4.9*
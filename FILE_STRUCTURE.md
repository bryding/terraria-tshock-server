# TERRARIA TSHOCK SERVER - FILE STRUCTURE

## 📁 Main Directory Files

### 🚀 Executables
- **TShock.Server.exe** - Main server executable

### 📜 Scripts
- **start-server.bat** - Primary server launcher (with timestamps & logging)
- **server-manager.ps1** - PowerShell management script (start/stop/restart/status)
- **setup-firewall.bat** - Windows Firewall configuration script

### ⚙️ Configuration
- **serverconfig.txt** - Main server configuration file

### 📚 Documentation
- **README.md** - Comprehensive server guide
- **PORT_FORWARDING_GUIDE.md** - Detailed port forwarding instructions
- **FILE_STRUCTURE.md** - This file

### 📊 Data Files
- **GeoIP.dat** - IP geolocation database for TShock

## 📂 Directory Structure

### `/bin/`
Server runtime files and libraries:
- `HttpServer.dll`
- `ModFramework.dll`
- `OTAPI.dll`
- `OTAPI.Runtime.dll`
- `TerrariaServer.dll`
- Various `.xml` documentation files

### `/ServerPlugins/`
TShock plugin files:
- `TShockAPI.dll` - Core TShock API
- `TShockAPI.deps.json` - Dependencies
- `TShockAPI.pdb` - Debug symbols
- `TShockAPI.xml` - API documentation

### `/i18n/`
Internationalization files for multiple languages:
```
de_DE/  en_PT/  es_ES/  fr_FR/  fr_QC/  id_ID/  it_IT/
ja_JP/  pl_PL/  pt_BR/  pt_PT/  ru_RU/  ru_UA/  tok/
tr_TR/  zh_CN/
```

### `/logs/`
Server logs with timestamps:
- `server_YYYYMMDD.log` - Daily server logs created by start-server.bat

### `/worlds/`
World save files:
- `world1.wld` - Main world file
- `world1.wld.bak` - Automatic backup

### `/tshock/`
TShock-specific data:
- `config.json` - TShock configuration
- `sscconfig.json` - Server-side character config
- `motd.txt` - Message of the day
- `rules.txt` - Server rules
- `whitelist.txt` - Player whitelist
- `setup-code.txt` - Admin setup code (714592)
- `/logs/` - TShock-specific logs

## 🗑️ Files Removed During Cleanup
- ~~start-server-with-logs.bat~~ (duplicate functionality)
- ~~TShock.Installer.exe~~ (no longer needed)
- ~~ServerLog.txt~~ (old log format)
- ~~.git/ directory~~ (108+ git files)
- ~~world1.wld.bak2~~ (old backup)

## 📊 Summary
- **3** executable scripts
- **3** documentation files
- **1** main executable
- **1** configuration file
- **Multiple** support libraries and localization files
- **Organized** logging system
- **Clean** separation of server data, configs, and worlds
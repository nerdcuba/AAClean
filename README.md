# 🧹 AAClean Script

> **GSF & Google Services Cleaner for Android**

Clean and reset Google Services Framework (GSF) identifiers on Android 14, 15, and 16 to resolve notification issues and Google Services glitches.

**Created by:** [@nerdcuba](https://github.com/nerdcuba)

---

## ✨ Features

- 🆔 Clears Android ID
- 📢 Removes Advertising ID  
- 🔵 Resets Bluetooth Address
- 🔧 Clears Google Services Framework (GSF)
- 📱 Wipes Google Play Services cache
- 🏪 Clears Google Play Store cache
- 🔄 Auto-restarts device with animations
- ⏱️ Beautiful CLI with progress tracking and countdown

---

## 📋 Requirements

- **Operating System:** Linux/Ubuntu
- **ADB (Android Debug Bridge)** 
  ```bash
  sudo apt install android-tools-adb
  ```
- **Android Device** connected via USB
- **USB Debugging** enabled in Developer Options
- **ROOT Access** on Android device (Magisk or similar)

---

## 🚀 Installation & Usage

### Quick Start

```bash
# 1. Make script executable
chmod +x aclean.sh

# 2. Run the script
./aclean.sh

# 3. Follow on-screen prompts
# Type: YES
# Watch it clean and auto-reboot
```

### What Happens

1. Script verifies device connection
2. Shows warning about what will be cleared
3. Requires confirmation (type **YES**)
4. Starts 3-second countdown
5. Cleans 7 components with progress tracking
6. Auto-restarts device in 5 seconds
7. Device regenerates fresh identifiers on boot

---

## ✅ Tested On

| Android Version | Status |
|-----------------|--------|
| Android 14      | ✅ Working |
| Android 15      | ✅ Working |
| Android 16      | ✅ Working |

**OS:** Ubuntu Linux

---

## 📌 Important Notes

### Device ID Reset

On **Android 15+**, the Device ID (SSAID) is heavily protected by the system and may not fully reset using this script alone. 

**Solution:** Use this Magisk module in combination with AAClean:

🔗 **[DeviceIDChanger by sidex15](https://github.com/sidex15/deviceidchanger)**

### Complete Solution for Full Device Reset

For maximum effect and to appear as a completely fresh device:

```
1. Run AAClean Script
   ↓
2. Install DeviceIDChanger Magisk module and select specific app
   ↓
3. Reboot
   ↓
✅ Result: Device appears brand new to Google Services
```

---

## ⚠️ Warnings & Disclaimers

**Before running this script:**

- ⚠️ Google Services configuration will be cleared
- ⚠️ You may need to re-authenticate your Google account
- ⚠️ Device will automatically reboot
- ℹ️ Personal cloud data (Photos, Drive, Gmail) won't be affected
- ℹ️ Messages stored on cloud servers won't be deleted

### Special Considerations

**Back up these apps FIRST** if you use them (secret chats aren't cloud-synced):
- 🔐 WhatsApp (enable Google Drive backup)
- 🔐 Telegram (enable cloud backup)
- 🔐 Signal (enable backup)
- 🔐 Facebook Messenger (secret chats)
- 🔐 Line (secret chats)

---

## 🔧 Troubleshooting

### "ERROR: ADB is not installed"

**Solution:**
```bash
sudo apt install android-tools-adb
```

### "ERROR: No Android device found connected"

**Checklist:**
1. ✅ USB cable properly connected
2. ✅ USB Debugging enabled: Settings → Developer Options → USB Debugging
3. ✅ Authorized computer on device (tap OK when prompted)
4. ✅ Run `adb devices` to verify connection

### "Permission denial" errors

**Solution:** 
- Ensure your device has ROOT access
- Install Magisk or similar root management tool
- Accept root permission prompts on device when script runs

### Some apps still have notification issues

**Try this:**
1. Run AAClean Script
2. Install DeviceIDChanger Magisk module
3. Reboot and test
4. If still issues: manually clear app cache in Settings

---

## 📊 What Gets Cleared

| Component | Action |
|-----------|--------|
| Android ID | Deleted |
| Advertising ID | Deleted |
| Bluetooth Address | Deleted |
| GSF Database | Cleared |
| GMS Cache | Cleared |
| Play Store Cache | Cleared |
| Sync Settings | Reset |

All changes are system-level and **reversible** - Android regenerates these on next boot.

---

## 💡 Use Cases

✅ Fix delayed or non-working push notifications
✅ Resolve Google Play Services sync errors
✅ Clean up accumulated Google Services data
✅ Prepare device for app testing
✅ Troubleshoot notification delivery issues
✅ Reset Google Services without factory reset

---

## 🤝 Credits

- **Script Author:** [@nerdcuba](https://github.com/nerdcuba)
- **Device ID Reset Module:** [sidex15 - DeviceIDChanger](https://github.com/sidex15/deviceidchanger)

---

## 📜 License

Free to use and distribute. Attribution appreciated.

---

## ⚖️ Disclaimer

**Use at your own risk.** This script modifies system-level settings and requires root access. While designed to be safe and reversible, the author is not responsible for any unintended consequences. Always ensure your important data is backed up before running system-level modifications.

---

## 🐛 Support

If you encounter issues:
- Share your Android version
- Include relevant error messages
- Check troubleshooting section first
- Post detailed issue report

---

**Last Updated:** October 2025  
**Version:** 1.0  
**Status:** Active & Maintained

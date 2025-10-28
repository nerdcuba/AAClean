#!/bin/bash

# AAClean Script by: @nerdcuba
# GSF Reset Tool for Linux Ubuntu - Android 15
# Reset Android GSF ID and clear Google Services

echo "=========================================="
echo "AAClean Script by: @nerdcuba v1.0"
echo "=========================================="
echo ""
echo "This script will clean:"
echo "  • Android ID"
echo "  • Advertising ID"
echo "  • Bluetooth Address"
echo "  • Google Services Framework (GSF)"
echo "  • Google Play Services"
echo "  • Google Play Store"
echo ""
echo "⚠️  REQUIREMENTS:"
echo "  • ADB enabled on device"
echo "  • Device connected via USB"
echo "  • ROOT access on device (required for Android 15)"
echo ""
read -p "Press Enter to continue..."
echo ""

# Verify adb is installed
if ! command -v adb &> /dev/null; then
    echo "❌ ERROR: ADB is not installed. Install it with: sudo apt install android-tools-adb"
    exit 1
fi

# Verify device connection
echo "🔍 Checking device connection..."
if ! adb devices | grep -q "device$"; then
    echo "❌ ERROR: No Android device found connected"
    echo ""
    echo "Make sure to:"
    echo "  1. Connect the device via USB"
    echo "  2. Enable USB Debugging in Developer Options"
    echo "  3. Authorize the connection on the device"
    exit 1
fi

echo "✅ Device detected successfully"
echo ""
echo "⚠️  IMPORTANT WARNING ⚠️"
echo "=========================================="
echo "This process will:"
echo "  • Clear Google Services configuration"
echo "  • Generate new system identifiers"
echo "  • Automatically restart your device"
echo "  • Personal data will NOT be lost"
echo "=========================================="
echo ""
read -p "Are you sure? Type 'YES' to continue: " confirmacion

if [ "$confirmacion" != "YES" ]; then
    echo "❌ Operation cancelled"
    exit 1
fi

echo ""
echo "✨ Starting cleaning in 3 seconds..."
sleep 1
echo "   ⏳ 2..."
sleep 1
echo "   ⏳ 1..."
sleep 1
echo ""

# Clean system identifiers (with root)
echo "🧹 [1/7] Cleaning Android ID..."
adb shell su -c "settings delete secure android_id" > /dev/null 2>&1
echo "   ✓ Android ID cleaned"
sleep 0.5

echo "🧹 [2/7] Cleaning Advertising ID..."
adb shell su -c "settings delete secure advertising_id" > /dev/null 2>&1
echo "   ✓ Advertising ID cleaned"
sleep 0.5

echo "🧹 [3/7] Cleaning Bluetooth Address..."
adb shell su -c "settings delete secure bluetooth_address" > /dev/null 2>&1
echo "   ✓ Bluetooth Address cleaned"
sleep 0.5

# Clean Google Services Framework (with root)
echo "🧹 [4/7] Cleaning Google Services Framework..."
adb shell su -c "pm clear com.google.android.gsf" > /dev/null 2>&1
echo "   ✓ GSF cleaned"
sleep 0.5

# Clean Google Play Services (with root)
echo "🧹 [5/7] Cleaning Google Play Services..."
adb shell su -c "pm clear com.google.android.gms" > /dev/null 2>&1
echo "   ✓ Google Play Services cleaned"
sleep 0.5

echo "🧹 [6/7] Cleaning GMS Setup..."
adb shell su -c "pm clear com.google.android.gms.setup" > /dev/null 2>&1
echo "   ✓ GMS Setup cleaned"
sleep 0.5

# Clean Google Play Store (with root)
echo "🧹 [7/7] Cleaning Google Play Store..."
adb shell su -c "pm clear com.android.vending" > /dev/null 2>&1
echo "   ✓ Google Play Store cleaned"
sleep 0.5

echo ""
echo "=========================================="
echo "✅ Cleaning completed successfully!"
echo "=========================================="
echo ""
echo "🔄 Restarting device in 5 seconds..."
echo ""

# Countdown with animation
for i in {5..1}; do
    printf "   "
    for ((j=1; j<=i; j++)); do
        printf "⭐ "
    done
    echo " ($i seconds)"
    sleep 1
done

echo ""
echo "🚀 Restarting now!"
echo ""

adb reboot

echo "✨ Device is restarting..."
echo "   New IDs will be generated automatically"
echo ""
echo "💡 Tip: Reconnect via USB if needed after restart"
echo ""

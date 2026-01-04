#!/bin/bash

# Listar dispositivos
devices=$(bluetoothctl devices | cut -d' ' -f2-)

# Mostrar en rofi/wofi
selected=$(echo "$devices" | wofi --dmenu -p "Bluetooth Devices")

if [ -n "$selected" ]; then
    mac=$(echo "$selected" | awk '{print $1}')
    
    # Toggle conexión
    if bluetoothctl info "$mac" | grep -q "Connected: yes"; then
        bluetoothctl disconnect "$mac"
    else
        bluetoothctl connect "$mac"
    fi
fi

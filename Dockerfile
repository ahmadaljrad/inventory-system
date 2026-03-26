# استخدام Nginx
FROM nginx:alpine

# حذف الملفات الافتراضية
RUN rm -rf /usr/share/nginx/html/*

# نسخ ملفات الموقع
COPY . /usr/share/nginx/html

# فتح البورت
EXPOSE 80

# تشغيل nginx
CMD ["nginx", "-g", "daemon off;"]

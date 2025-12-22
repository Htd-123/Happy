# Sử dụng image nginx chính thức
FROM nginx:alpine

# Xóa folder html mặc định
RUN rm -rf /usr/share/nginx/html/*

# Copy toàn bộ nội dung project vào html của nginx
COPY . /usr/share/nginx/html/

# Expose cổng 80
EXPOSE 80

# Chạy nginx
CMD ["nginx", "-g", "daemon off;"]

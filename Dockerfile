# Sử dụng image Node.js chính thức
FROM node:18

# Thiết lập thư mục làm việc trong container
WORKDIR /

# Sao chép file package.json và package-lock.json vào container
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Expose cổng mà ứng dụng sẽ chạy (cổng 3000)
EXPOSE 3000

# Chạy ứng dụng
CMD ["node", "app.js"]

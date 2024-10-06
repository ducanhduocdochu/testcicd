// Import Express
require('dotenv').config();
const express = require('express');

// Khởi tạo ứng dụng Express
const app = express();

// Tạo route cho đường dẫn "/"
app.get('/', (req, res) => {
  res.send('Hello World');
});

// Thiết lập server lắng nghe trên cổng 3000
const PORT = process.env.PORT;
app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}/`);
});

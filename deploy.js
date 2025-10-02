const fs = require('fs');
const https = require('https');

// Читаем файл
const fileContent = fs.readFileSync('multibutton.html', 'utf8');

// Данные для GitHub API
const data = JSON.stringify({
  message: 'Исправлена кнопка настроек и добавлена поддержка Jivo виджетов v2.0',
  content: Buffer.from(fileContent).toString('base64'),
  sha: 'HEAD' // или актуальный SHA коммита
});

const options = {
  hostname: 'api.github.com',
  port: 443,
  path: '/repos/AlexandrMikhailov1990/multibutton-component/contents/multibutton.html',
  method: 'PUT',
  headers: {
    'Content-Type': 'application/json',
    'Content-Length': data.length,
    'User-Agent': 'Node.js'
  }
};

console.log('Попытка загрузки файла через GitHub API...');
console.log('Внимание: Для работы нужен Personal Access Token GitHub');
console.log('Файл готов к загрузке:', fileContent.length, 'символов');


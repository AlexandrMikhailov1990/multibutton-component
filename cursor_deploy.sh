#!/bin/bash

echo "🚀 Быстрый деплой из Cursor..."

# Проверяем наличие файла
if [ ! -f "multibutton.html" ]; then
    echo "❌ Файл multibutton.html не найден"
    exit 1
fi

echo "✅ Файл multibutton.html найден"

# Копируем в буфер обмена
echo "📋 Копируем код в буфер обмена..."
cat multibutton.html | pbcopy

echo "✅ Код скопирован в буфер обмена!"
echo ""
echo "📋 Следующие шаги:"
echo "1. Откройте https://github.com/AlexandrMikhailov1990/multibutton-component"
echo "2. Нажмите на multibutton.html"
echo "3. Нажмите Edit (карандаш)"
echo "4. Выделите весь код (Cmd+A)"
echo "5. Вставьте новый код (Cmd+V)"
echo "6. Нажмите 'Commit changes'"
echo ""
echo "🌐 После обновления сайт будет доступен на:"
echo "   https://multybutton.netlify.app/multibutton"




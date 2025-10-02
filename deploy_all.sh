#!/bin/bash

echo "🚀 Универсальный деплой multibutton.html"
echo "========================================"

# Проверяем наличие файла
if [ ! -f "multibutton.html" ]; then
    echo "❌ Файл multibutton.html не найден"
    exit 1
fi

echo "✅ Файл multibutton.html найден, размер: $(wc -c < multibutton.html) байт"
echo ""

# Метод 1: Git push (самый простой)
echo "🔄 Метод 1: Git push..."
if git status --porcelain | grep -q "multibutton.html"; then
    echo "📝 Найдены изменения в multibutton.html"
    git add multibutton.html
    git commit -m "Обновление multibutton.html: исправления и улучшения"
    
    if git push origin main; then
        echo "✅ Git push успешен!"
        echo "🌐 Сайт будет обновлен через несколько минут"
        exit 0
    else
        echo "❌ Git push не удался, пробуем другие методы..."
    fi
else
    echo "ℹ️  Нет изменений в multibutton.html для коммита"
fi

echo ""

# Метод 2: Копирование в буфер обмена
echo "🔄 Метод 2: Копирование в буфер обмена..."
cat multibutton.html | pbcopy
echo "✅ Код скопирован в буфер обмена!"
echo ""
echo "📋 Ручной деплой:"
echo "1. Откройте https://github.com/AlexandrMikhailov1990/multibutton-component"
echo "2. Нажмите на multibutton.html"
echo "3. Нажмите Edit (карандаш)"
echo "4. Выделите весь код (Cmd+A)"
echo "5. Вставьте новый код (Cmd+V)"
echo "6. Нажмите 'Commit changes'"
echo ""
echo "🌐 После обновления сайт будет доступен на:"
echo "   https://multybutton.netlify.app/multibutton"




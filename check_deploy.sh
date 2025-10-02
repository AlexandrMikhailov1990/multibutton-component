#!/bin/bash

echo "🔍 Проверка деплоя на Netlify..."

# URL вашего Netlify сайта
NETLIFY_URL="https://multybutton.netlify.app"

echo "📡 Проверяем доступность сайта..."
if curl -s --head "$NETLIFY_URL" | head -n 1 | grep -q "200"; then
    echo "✅ Сайт доступен"
else
    echo "❌ Сайт недоступен"
fi

echo "📡 Проверяем multibutton.html..."
if curl -s --head "$NETLIFY_URL/multibutton" | head -n 1 | grep -q "200"; then
    echo "✅ multibutton.html доступен"
else
    echo "❌ multibutton.html недоступен"
fi

echo "📡 Проверяем index.html..."
if curl -s --head "$NETLIFY_URL/" | head -n 1 | grep -q "200"; then
    echo "✅ index.html доступен"
else
    echo "❌ index.html недоступен"
fi

echo "🎉 Проверка завершена!"
echo "🌐 Откройте сайт: $NETLIFY_URL"

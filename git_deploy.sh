#!/bin/bash

echo "🚀 Автоматический деплой через Git..."

# Проверяем наличие файла
if [ ! -f "multibutton.html" ]; then
    echo "❌ Файл multibutton.html не найден"
    exit 1
fi

echo "✅ Файл multibutton.html найден, размер: $(wc -c < multibutton.html) байт"

# Добавляем все изменения
echo "📝 Добавляем изменения в git..."
git add .

# Коммитим изменения
echo "💾 Создаем коммит..."
git commit -m "Обновление multibutton.html: исправлена кнопка настроек и улучшена поддержка Jivo виджетов"

# Пушим в репозиторий
echo "⬆️  Отправляем изменения в GitHub..."
git push origin main

if [ $? -eq 0 ]; then
    echo "✅ Деплой успешно завершен!"
    echo "🌐 Сайт будет обновлен через несколько минут на:"
    echo "   https://multybutton.netlify.app/multibutton"
else
    echo "❌ Ошибка при отправке изменений"
    exit 1
fi




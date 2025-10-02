#!/bin/bash

# Простой скрипт для деплоя через GitHub API
# Требует Personal Access Token

echo "🚀 Начинаем деплой..."

# Проверяем наличие файла
if [ ! -f "simple_button.html" ]; then
    echo "❌ Файл simple_button.html не найден"
    exit 1
fi

echo "✅ Файл найден, размер: $(wc -c < simple_button.html) байт"

# Показываем инструкции
echo ""
echo "📋 Для автоматического деплоя нужен GitHub Personal Access Token"
echo "1. Создайте токен на https://github.com/settings/tokens"
echo "2. Дайте права на репозиторий"
echo "3. Запустите: TOKEN=your_token ./deploy.sh"
echo ""
echo "🔄 Альтернативно - ручной деплой через веб-интерфейс:"
echo "1. Откройте https://github.com/AlexandrMikhailov1990/multibutton-component"
echo "2. Нажмите на simple_button.html"
echo "3. Нажмите Edit (карандаш)"
echo "4. Скопируйте содержимое локального файла"
echo "5. Вставьте и нажмите Commit changes"
echo ""

# Если есть токен, пытаемся загрузить
if [ ! -z "$TOKEN" ]; then
    echo "🔑 Используем токен для загрузки..."
    
    # Получаем текущий SHA файла
    SHA=$(curl -s -H "Authorization: token $TOKEN" \
        "https://api.github.com/repos/AlexandrMikhailov1990/multibutton-component/contents/simple_button.html" | \
        grep '"sha"' | cut -d'"' -f4)
    
    if [ ! -z "$SHA" ]; then
        echo "📝 Обновляем существующий файл..."
        
        # Кодируем файл в base64
        CONTENT=$(base64 -i simple_button.html)
        
        # Отправляем обновление
        curl -X PUT \
            -H "Authorization: token $TOKEN" \
            -H "Content-Type: application/json" \
            -d "{\"message\":\"Добавлена поддержка Jivo виджетов\",\"content\":\"$CONTENT\",\"sha\":\"$SHA\"}" \
            "https://api.github.com/repos/AlexandrMikhailov1990/multibutton-component/contents/simple_button.html"
        
        echo ""
        echo "✅ Деплой завершен!"
    else
        echo "❌ Не удалось получить SHA файла"
    fi
else
    echo "ℹ️  Токен не предоставлен, используйте ручной деплой"
fi




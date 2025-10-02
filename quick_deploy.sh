#!/bin/bash

echo "🚀 Быстрый деплой через GitHub API..."

# Проверяем наличие файла
if [ ! -f "simple_button.html" ]; then
    echo "❌ Файл simple_button.html не найден"
    exit 1
fi

echo "✅ Файл найден, размер: $(wc -c < simple_button.html) байт"

# Кодируем файл в base64
CONTENT=$(base64 -i simple_button.html)

echo "📝 Создаем JSON для GitHub API..."

# Создаем JSON файл
cat > deploy_data.json << EOF
{
  "message": "Добавлена поддержка Jivo виджетов v2.0 с принудительным обновлением кэша",
  "content": "$CONTENT"
}
EOF

echo "✅ JSON файл создан"
echo "📋 Для завершения деплоя:"
echo "1. Получите Personal Access Token на https://github.com/settings/tokens"
echo "2. Запустите: TOKEN=your_token curl -X PUT -H \"Authorization: token \$TOKEN\" -H \"Content-Type: application/json\" -d @deploy_data.json https://api.github.com/repos/AlexandrMikhailov1990/multibutton-component/contents/simple_button.html"
echo ""
echo "🔄 Или используйте ручной деплой через веб-интерфейс GitHub"




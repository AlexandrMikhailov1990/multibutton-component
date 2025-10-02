#!/bin/bash

echo "🔧 Настройка алиасов для деплоя..."

# Добавляем алиасы в .zshrc
echo "" >> ~/.zshrc
echo "# Multibutton deploy aliases" >> ~/.zshrc
echo "alias deploy='./deploy'" >> ~/.zshrc
echo "alias deploy-all='./deploy_all.sh'" >> ~/.zshrc
echo "alias deploy-git='./git_deploy.sh'" >> ~/.zshrc
echo "alias deploy-cursor='./cursor_deploy.sh'" >> ~/.zshrc

echo "✅ Алиасы добавлены в ~/.zshrc"
echo ""
echo "📋 Теперь вы можете использовать:"
echo "  deploy        - быстрый деплой (копирование в буфер)"
echo "  deploy-all    - универсальный деплой"
echo "  deploy-git    - деплой через git"
echo "  deploy-cursor - копирование в буфер"
echo ""
echo "🔄 Перезагрузите терминал или выполните: source ~/.zshrc"




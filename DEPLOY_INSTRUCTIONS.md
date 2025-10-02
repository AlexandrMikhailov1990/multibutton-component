# Инструкция по деплою

## Проблема
Git заблокирован лицензией Xcode. Для решения выполните:

```bash
sudo xcodebuild -license accept
```

## Ручной деплой

### Вариант 1: Через GitHub веб-интерфейс
1. Откройте https://github.com/AlexandrMikhailov1990/multibutton-component
2. Нажмите на файл `simple_button.html`
3. Нажмите кнопку "Edit" (карандаш)
4. Скопируйте содержимое локального файла `simple_button.html`
5. Вставьте в редактор GitHub
6. Нажмите "Commit changes"

### Вариант 2: Через GitHub CLI (после авторизации)
```bash
gh auth login
gh repo view AlexandrMikhailov1990/multibutton-component
# Затем загрузите файл через веб-интерфейс
```

### Вариант 3: Через терминал (после решения проблемы с лицензией)
```bash
git add simple_button.html
git commit -m "Добавлена поддержка Jivo виджетов"
git push origin main
```

## Новые возможности
✅ Переключатель между режимами (соцсети / Jivo виджеты)
✅ Настройка неограниченного количества Jivo кнопок
✅ Динамическая загрузка виджетов
✅ Улучшенный интерфейс настроек

## Тестирование
Файл уже открыт в браузере для тестирования локально.


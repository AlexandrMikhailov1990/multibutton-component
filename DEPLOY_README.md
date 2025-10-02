# 🚀 Инструкции по деплою multibutton.html

## Быстрые команды

### 1. Автоматический деплой (рекомендуется)
```bash
./deploy_all.sh
```
Этот скрипт попробует git push, а если не получится - скопирует код в буфер обмена.

### 2. Только Git push
```bash
./git_deploy.sh
```

### 3. Только копирование в буфер
```bash
./cursor_deploy.sh
```

## Ручной деплой

1. **Копирование в буфер обмена:**
   ```bash
   cat multibutton.html | pbcopy
   ```

2. **Открыть GitHub:**
   - Перейти на https://github.com/AlexandrMikhailov1990/multibutton-component
   - Нажать на `multibutton.html`
   - Нажать "Edit" (карандаш)

3. **Заменить код:**
   - Выделить весь код (Cmd+A)
   - Вставить новый код (Cmd+V)
   - Нажать "Commit changes"

## GitHub Actions (автоматический деплой)

Для настройки автоматического деплоя на Netlify:

1. **Получить токены:**
   - `NETLIFY_AUTH_TOKEN` - из Netlify dashboard
   - `NETLIFY_SITE_ID` - из Netlify dashboard

2. **Добавить секреты в GitHub:**
   - Settings → Secrets and variables → Actions
   - Добавить `NETLIFY_AUTH_TOKEN` и `NETLIFY_SITE_ID`

3. **Workflow уже настроен** в `.github/workflows/deploy.yml`

## Проверка деплоя

После деплоя сайт будет доступен на:
- https://multybutton.netlify.app/multibutton

## Структура файлов

- `multibutton.html` - основной файл компонента
- `deploy_all.sh` - универсальный скрипт деплоя
- `git_deploy.sh` - деплой через git
- `cursor_deploy.sh` - копирование в буфер обмена
- `.github/workflows/deploy.yml` - GitHub Actions workflow




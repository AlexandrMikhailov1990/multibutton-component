# 🚀 Мульти-кнопка с соцсетями

Красивая и функциональная кнопка для вашего сайта с настраиваемыми ссылками на социальные сети.

## ✨ Особенности

- 🎨 **Красивый дизайн** - современный градиентный дизайн с анимациями
- ⚙️ **Простая настройка** - удобная панель для изменения ссылок и иконок
- 📱 **Адаптивность** - отлично работает на всех устройствах
- 🚀 **Быстрая работа** - легкий код без зависимостей
- 🔧 **Гибкость** - поддержка Telegram, WhatsApp, VK, Instagram, телефон
- 💬 **Jivo интеграция** - встроенный чат с автоматическим скрытием стандартной кнопки
- 🎯 **Готовые решения** - продвинутая версия для немедленного использования

## 🎯 Демо

- **Главная страница:** [index.html](index.html)
- **Продвинутая версия:** [advanced_multibutton.html](advanced_multibutton.html) - Готовая к использованию версия с Jivo интеграцией
- **Настраиваемая версия:** [multibutton.html](multibutton.html) - Полная версия с панелью настроек
- **Простая версия:** [simple_button.html](simple_button.html) - Упрощенная версия для тестирования

## 📖 Как использовать

### 1. Настройка
1. Откройте `multibutton.html` в браузере
2. Нажмите кнопку "⚙️ Настройки" в левом верхнем углу
3. Заполните ссылки на ваши социальные сети
4. Нажмите "Применить"

### 2. Тестирование
1. Нажмите на фиолетовую кнопку в правом нижнем углу
2. Откроется меню с вашими соцсетями
3. Кликните на любую кнопку для перехода

### 3. Копирование настроек
1. После применения настроек появится блок с информацией
2. Нажмите "📋 Копировать настройки"
3. Используйте скопированные ссылки на вашем сайте

## 🛠️ Установка на сайт

### Вариант 1: Использование готового кода
Скопируйте код из `simple_button.html` и замените ссылки на ваши.

### Вариант 2: Создание собственной кнопки
Используйте скопированные настройки для создания собственной кнопки:

```html
<div class="multibutton">
    <button class="main-button" onclick="toggleMenu()">
        <img src="https://cdn-icons-png.flaticon.com/512/1827/1827933.png" alt="Меню">
    </button>
    <div class="popup-menu" id="popupMenu">
        <a href="ВАША_ССЫЛКА_TELEGRAM" class="social-button" target="_blank" title="Telegram">
            <img src="https://cdn-icons-png.flaticon.com/512/2111/2111646.png" alt="Telegram">
        </a>
        <!-- Добавьте другие соцсети -->
    </div>
</div>
```

## 🎨 CSS стили

```css
.multibutton {
    position: fixed;
    bottom: 20px;
    right: 20px;
    z-index: 9999;
}

.main-button {
    width: 60px;
    height: 60px;
    border-radius: 50%;
    border: none;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
    transition: all 0.3s ease;
}

.social-button {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    background: white;
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.15);
    transition: all 0.3s ease;
    text-decoration: none;
}
```

## 📱 Поддерживаемые платформы

- ✅ **Telegram** - `https://t.me/username`
- ✅ **WhatsApp** - `https://wa.me/1234567890`
- ✅ **VK** - `https://vk.com/username`
- ✅ **Instagram** - `https://instagram.com/username`
- ✅ **Телефон** - `tel:+1234567890`

## 🚀 Публикация

Этот проект готов для публикации на:
- **Netlify** - просто подключите GitHub репозиторий
- **GitHub Pages** - включите в настройках репозитория
- **Vercel** - автоматический деплой из GitHub

## 📄 Лицензия

MIT License - используйте свободно для любых целей.

## 🤝 Вклад в проект

Приветствуются любые улучшения! Создавайте issues и pull requests.

---

**Создано с ❤️ для удобства веб-разработчиков** 
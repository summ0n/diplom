FROM node:18
# Установка зависимостей
WORKDIR /root
COPY package*.json ./
RUN npm install
# Копируем исходники
COPY . .
# Сборка
RUN npm run build
# Запуск сервера (если есть)
EXPOSE 3000
CMD ["npm", "start"]

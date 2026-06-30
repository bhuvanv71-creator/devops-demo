FROM node:20-alpine
WORKDIR /app
COPY package*.json .
RUN npm install --only=production
COPY app.js .
RUN adduser -D appuser && chown -R appuser /app
USER appuser
EXPOSE 3001
CMD ["node", "app.js"]

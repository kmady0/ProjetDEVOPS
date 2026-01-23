FROM node:18

WORKDIR /app

# Copier le code du repo (donc modifiable par les devs)
COPY resources/codebase_partner/ .

RUN npm install

EXPOSE 80

CMD ["npm", "start"]

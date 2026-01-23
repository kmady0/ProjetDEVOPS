# Utiliser Node 18
FROM node:18

# Créer le répertoire de travail
WORKDIR /app

# Copier package.json et package-lock.json d'abord pour le cache Docker
COPY resources/codebase_partner/package*.json ./

# Installer toutes les dépendances, y compris aws-sdk
RUN npm install --legacy-peer-deps

# Copier le reste du code
COPY resources/codebase_partner/ ./

# Exposer le port
EXPOSE 3000

# Commande pour démarrer l'app
CMD ["node", "index.js"]

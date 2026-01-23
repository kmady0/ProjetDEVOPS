# Utiliser l'image officielle Node.js LTS
FROM node:18

# Créer et positionner le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json pour installer les dépendances
COPY resources/codebase_partner/package*.json ./

# Installer toutes les dépendances, incluant aws-sdk
RUN npm install --legacy-peer-deps

# Copier le reste du code source dans le conteneur
COPY resources/codebase_partner/ ./

# Exposer le port sur lequel l'application tourne
EXPOSE 3000

# Définir la commande de démarrage
CMD ["node", "index.js"]

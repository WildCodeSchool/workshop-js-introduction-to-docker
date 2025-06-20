# 1) Utilise une vieille image Node compatible node-sass@4
FROM node:6.17.1

# 2) Définit le répertoire de travail
WORKDIR /usr/src/app

# 3) Copie package.json et gulpfile.js
COPY package.json gulpfile.js ./

# 4) Installe toutes les dépendances (y compris devDependencies)
RUN npm install --production=false

# 5) Installe Gulp 3 et la CLI globalement pour garantir que la tâche "gulp" soit disponible
RUN npm install -g gulp@3.9.1 gulp-cli

# 6) Copie le reste des fichiers source
COPY src ./src

# 7) Expose le port BrowserSync (défini à 3000 dans gulpfile.js)
EXPOSE 3000

# 8) Lance Gulp directement (utilise la CLI global)
CMD ["gulp", "--cwd", "/usr/src/app"]

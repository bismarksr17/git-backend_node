FROM  node:20
# crea el directorio de trabajo
WORKDIR /app
# copia los archivos de la aplicacion al contenedor (raiz)
COPY package*.json ./
# instala las dependencias de la aplicacion
RUN npm install
# copia el resto de los archivos de la aplicacion al contenedor
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "run", "start:prod"]

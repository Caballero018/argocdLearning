# Utiliza una imagen base de Node.js
FROM node:14

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia el archivo package.json y package-lock.json para instalar las dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia los archivos del proyecto al contenedor
COPY . .

# Expone el puerto 3000 (por ejemplo, para una aplicación web Node.js)
EXPOSE 3000

# Comando para iniciar la aplicación
CMD [ "npm", "start" ]

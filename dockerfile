
#/* from node no dejara configurar que configuracion deseamos aplicar.*/
FROM node:21
# Permitira seleccionar la ruta de nuestro proyecto.
WORKDIR /app
#pasar todos los archivos package*.json ./ al archivo app dependencias a nivel de sistema
COPY package*.json ./
#run comando para instalar las dependencias.
RUN npm install
# copy .. todo lo que ves para pasarlo a containder .. => dentro del contenedor
COPY . .
EXPOSE 3000
CMD ["npm", "star"]
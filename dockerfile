# Utiliza una imagen base de NGINX
FROM nginx:latest

# Copia los archivos del directorio actual al directorio raíz del servidor web en la imagen
COPY . /usr/share/nginx/html

# Expone el puerto 80 para que el servidor web sea accesible desde el exterior
EXPOSE 80

# Comando para iniciar NGINX cuando se ejecute un contenedor basado en esta imagen
CMD ["nginx", "-g", "daemon off;"]

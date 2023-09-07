FROM swipl

# Donde se va a ejecutar el codigo fuente de nuestro proyecto
RUN mkdr -p /root/prolog_code

# Donde se va a encontrar el codigo fuente de la imagen
COPY . /app

# Colocar el puerto dende se ejecutara
#EXPOSE 3000

# Ejecutar el codigo 
CMD ["swipl", "/app/start.pl"]
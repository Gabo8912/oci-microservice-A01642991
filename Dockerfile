# Usa la imagen oficial de OpenJDK 17
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo
WORKDIR /oci-microservice-A01642991

# Copia el archivo JAR desde el directorio target
COPY /target/*.jar oci-microservice-A01642991.jar

# Copia el directorio Wallet_javadevop101
COPY ./src/main/resources/Wallet_javadevop101 /oci-microservice-A01642991/Wallet_javadevop101

# Configura la variable de entorno TNS_ADMIN
ENV TNS_ADMIN=/oci-microservice-A01642991/Wallet_javadevop101

# Expone el puerto de la aplicación
EXPOSE 8080

# Ejecuta la aplicación
ENTRYPOINT [ "java", "-jar", "oci-microservice-A01642991.jar" ]
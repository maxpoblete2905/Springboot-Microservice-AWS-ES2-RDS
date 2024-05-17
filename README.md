# 🚀 Getting Started

Este proyecto es un microservicio diseñado para obtener reservaciones. Utiliza Spring Boot y MySQL para gestionar y servir los datos de las reservaciones.

### 📚 Reference Documentation
Para mayor referencia, por favor considera las siguientes secciones:

* [Documentación oficial de Apache Maven](https://maven.apache.org/guides/index.html)
* [Guía de referencia del Spring Boot Maven Plugin](https://docs.spring.io/spring-boot/docs/3.2.5/maven-plugin/reference/html/)
* [Crear una imagen OCI](https://docs.spring.io/spring-boot/docs/3.2.5/maven-plugin/reference/html/#build-image)
* [Spring Web](https://docs.spring.io/spring-boot/docs/3.2.5/reference/htmlsingle/index.html#web)

### 📖 Guides
Los siguientes guías ilustran cómo usar algunas características concretas:

* [Accediendo a datos con MySQL](https://spring.io/guides/gs/accessing-data-mysql/)
* [Construyendo un servicio web RESTful](https://spring.io/guides/gs/rest-service/)
* [Sirviendo contenido web con Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Construyendo servicios REST con Spring](https://spring.io/guides/tutorials/rest/)

### ⚙️ Funcionalidades del Microservicio
Este microservicio proporciona una API para gestionar las reservaciones, incluyendo las siguientes funcionalidades:

- **Obtener todas las reservaciones:** Recupera una lista de todas las reservaciones registradas en el sistema.
- **Crear una nueva reservación:** Permite la creación de una nueva reservación en la base de datos.
- **Actualizar una reservación existente:** Actualiza los detalles de una reservación específica.
- **Eliminar una reservación:** Elimina una reservación de la base de datos.

### 🛠️ Instalación y Configuración
1. **Clonar el repositorio:**
    ```sh
    git clone <URL_DEL_REPOSITORIO>
    ```
2. **Navegar al directorio del proyecto:**
    ```sh
    cd nombre-del-proyecto
    ```
3. **Construir el proyecto con Maven:**
    ```sh
    mvn clean install
    ```
4. **Ejecutar la aplicación:**
    ```sh
    mvn spring-boot:run
    ```

### 🗃️ Configuración de la Base de Datos

# 🐳 Docker Compose para Desarrollo

Este proyecto también incluye una configuración de Docker Compose para facilitar el desarrollo y la ejecución del microservicio junto con sus dependencias. El archivo YAML `docker-compose.yml` define la configuración de los servicios y las redes necesarias para desplegar el entorno de desarrollo.

### 💡 Explicación del Archivo YAML

El archivo `docker-compose.yml` está estructurado de la siguiente manera:

- **version:** Indica la versión de Docker Compose que se está utilizando. En este caso, se está utilizando la versión `3.8`.

- **services:** Define los servicios que componen el entorno de desarrollo. Cada servicio, como MySQL, phpMyAdmin y el propio servicio de reservaciones, tiene su propia configuración.

- **networks:** Define las redes Docker que conectarán los servicios entre sí.

- **volumes:** Define los volúmenes Docker que se utilizan para persistir los datos, como el volumen para la base de datos MySQL.

### 💻 Uso del Archivo YAML para Desarrollo

1. **Clonar el Repositorio:**
    ```sh
    git clone <URL_DEL_REPOSITORIO>
    ```

2. **Navegar al Directorio del Proyecto:**
    ```sh
    cd nombre-del-proyecto
    ```

3. **Construir el Proyecto con Maven:**
    ```sh
    mvn clean install
    ```

4. **Ejecutar el Entorno de Desarrollo con Docker Compose:**
    ```sh
    docker-compose up -d 
    ```

   Esto levantará todos los servicios definidos en el archivo `docker-compose.yml`, incluyendo MySQL, phpMyAdmin y el servicio de reservaciones. Puedes acceder a la aplicación de reservaciones a través del puerto 3000 en tu navegador.

5. **Detener y Limpiar los Contenedores:**
   Cuando hayas terminado de trabajar, puedes detener y limpiar los contenedores con el siguiente comando:
    ```sh
    docker-compose down
    ```

   Esto detendrá y eliminará los contenedores, pero conservará los datos en el volumen de la base de datos MySQL para que puedan ser reutilizados la próxima vez que inicies el entorno de desarrollo.

# states-frontend

## Project setup
```
yarn install
```

## Before star the project you need to set up the VUE_APP_API_URL in the .env file
for example VUE_APP_API_URL=http://localhost:1234, it depends from de Backend API

### Compiles and hot-reloads for development
```
yarn serve
```

Go to http://localhost:8080 to test the app

### Compiles and minifies for production
```
yarn build
```

### Lints and fixes files
```
yarn lint
```

## Dockerfile
### Create de Docker image
Building the Docker image: Open a terminal in the directory where your Dockerfile is located and execute the following command to build the Docker image:

```
docker build -t image_name .
```

### Running the Docker container
Running the Docker container: Once the Docker image has been successfully built, you can run a container based on that image using the following command:

```
docker run -p 8080:8080 image_name
```


### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

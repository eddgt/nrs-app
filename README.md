# nrs-app
UI for manage states and counties information using node.js, vue.js 3, docker and docker-compose

## Instructions to run the application

These instructions will guide you to run the application using Docker Compose. Make sure you have Docker and Docker Compose installed on your system before starting.

## Step 1: Clone the repository

Clone the application repository from GitHub:

```bash
git clone https://github.com/eddgt/nrs-app.git
cd nrs-app
```

## Step 2: Set up the .env file

In the `frontend` directory, edit the `.env` file and configure the environment variable `VUE_APP_API_URL` with the IP address or hostname of the backend:

```plaintext
VUE_APP_API_URL=http://localhost:3003
```

## Step 3: Run Docker Compose

In the root directory of the repository, run the following command to start the application services using Docker Compose:

```bash
docker-compose up --build
```

This command will download the necessary images, build the containers, crete network and start the application.

## Step 4: Test the backend

After all services are up and running, you can test the backend by accessing the following URL from your browser or using tools like Postman:

```plaintext
http://localhost:3003/api/states
```

This URL should return data from the backend if it's functioning correctly.

## Step 5: Access the application

Once all services are running, you can access the application through your web browser. Open your browser and navigate to the following address:

```plaintext
http://localhost:8080/app
```

Now you should be able to interact with the application!

## Stopping the application

To stop the application, you can press `Ctrl + C` in the terminal where Docker Compose is running. Then, you can stop and remove the containers using the following command:

```bash
docker-compose down
```

## Troubleshooting Data Issues

If you dont found the data in the tables, you can try refreshing the data by following these steps:

1. Ensure your Docker containers are running.

2. Use the following command to load the data from the `dump.sql` file into the database:

    ```bash
    docker exec -i <CONTAINER_NAME> psql -U postgres -d statesdb < /database/dump.sql
    ```
3. You can find the database password in /database/Dockerfile as POSTGRES_PASSWORD

Replace `<CONTAINER_NAME>` with the actual name of your PostgreSQL container. This command will execute the `dump.sql` file to load the data into the database tables.

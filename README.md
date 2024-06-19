# Search Web

This project is designed to gather information from websites using web scraping techniques. Named [ruby-web-scraping](https://github.com/aronkst/ruby-web-scraping), it focuses on extracting relevant data efficiently and accurately.

Serving as the frontend for the [ruby-web-scraping](https://github.com/aronkst/ruby-web-scraping), this application allows users to specify what information to search for on a website and saves all retrieved results. It provides an intuitive interface for managing search criteria and viewing the collected data.

One of the key advantages of this application is its ease of deployment. There is no need to install Ruby, PostgreSQL, or Redis on your system, as the entire application runs seamlessly within Docker containers. This ensures a streamlined setup process and a consistent execution environment.

# System dependencies

Docker and Docker Compose.

# How to run

```
make run
```

Or:

```
docker compose -f docker-compose.yml up
```

# Makefile

There are some commands inside the Makefile to facilitate the development and execution of this project.

Run the DEV MODE (run only PostgreSQL and Redis):

```
make dev
```

Run the application:

```
make run
```

Start the Docker Compose:

```
make start
```

Stop the Docker Compose:

```
make stop
```

View logs for Docker containers:

```
make logs
```

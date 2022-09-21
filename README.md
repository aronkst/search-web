# Movie Recommender

This is a project that seeks information on a website using web scraping [ruby-web-scraping](https://github.com/aronkst/ruby-web-scraping).

It can serve as a frontend of the [ruby-web-scraping](https://github.com/aronkst/ruby-web-scraping), being able to save what to look for in the website and all the results brought in the search.

This application does not need to install Ruby, PostgreSQL or Redis, as this application runs inside Docker.

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

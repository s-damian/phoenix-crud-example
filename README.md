<p align="center">
<a href="https://github.com/s-damian/phoenix-crud-example">
<img src="https://raw.githubusercontent.com/s-damian/medias/main/technos-logos/phoenix.jpg">
</a>
</p>

# Example of CRUD with Phoenix 1.7 / Elixir / MySQL

This example is made by [Stephen Damian](https://github.com/s-damian)

## Requirements

* Elixir >= 1.14
* Erlang >= 24

## Configuration - Phoenix App

Clone github repository:

```
git clone git@github.com:s-damian/phoenix-crud-example.git
```

In terminal, position yourself in the ```phoenix-crud-example``` directory:

```
cd /your_path/phoenix-crud-example
```

In ```config/dev.exs```, configure your database credentials. (For security reasons: in a production context, you must use environment variables. You should never put database credentials directly in the versioned code).

Install dependencies:

```
mix deps.get
```

Create the database (MySQL / MariaDB):

```
mix ecto.create
```

Run migrations:

```
mix ecto.migrate
```

## You can run the server, and you can run these demo URLs

### Run the server

```
mix phx.server
```

Here is an example of Virtual Host (Reverse Proxy) with Nginx: [Nginx Vhost](https://github.com/s-damian/phoenix-crud-example/blob/main/_nginx/vhost-example.conf)

### Run demo URLs

* http://127.0.0.1:4000/articles

* http://127.0.0.1:4000/articles/new

And you can **Create** / **Read** (listing or show a single article) / **Update** / **Delete** articles.

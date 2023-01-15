<p align="center">
<a href="https://github.com/s-damian/phoenix-crud-example">
<img src="https://raw.githubusercontent.com/s-damian/medias/main/technos-logos/phoenix.jpg">
</a>
</p>

# Example of CRUD with Phoenix 1.6 / Elixir

This example is made by [Stephen Damian](https://github.com/s-damian)

## Requirements

* Elixir >= 1.12
* Erlang >= 22

## Configuration - Phoenix App

Clone github repository:

```
git clone git@github.com:s-damian/phoenix-crud-example.git
```

In terminal, position yourself in the ```phoenix-crud-example``` directory:

```
cd /your_path/phoenix-crud-example/
```

In ```config/dev.exs```, configure your database credentials. (For security reasons: in a production context, you must use environment variables. You should never put database credentials directly in the versioned code).

Install dependencies:

```
mix deps.get
```

Create the database:

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

### Run demo URLs

* http://127.0.0.1:4000/admin/articles

* http://127.0.0.1:4000/admin/articles/new

And you can **Create** / **Read** (listing or show a single article) / **Update** / **Delete** articles.






<p align="center">
<a href="https://github.com/s-damian/phoenix-crud-example">
<img src="https://raw.githubusercontent.com/s-damian/medias/main/technos-logos/phoenix.jpg">
</a>
</p>

# Example of CRUD with Elixir / Phoenix 1.6

This example is made by [Stephen Damian](https://github.com/s-damian)

## Requirements

* Elixir >= 1.12
* Erlang >= 22

## Configuration - Phoenix App

Clone github repository:

```
git@github.com:s-damian/phoenix-crud-example.git
```

In terminal, position yourself in the ```phoenix-crud-example``` directory:

```
cd /your_path/phoenix-crud-example/
```

In ```config/dev.exs``` and in  ```config/test.exs```, configure your database credentials.

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

Run the server:

```
mix phx.server
```

## After configuring your Web Server, you can run these demo URLs

* http://www.your-domain.com/admin/articles

* http://www.your-domain.com/admin/articles/new

And you can **Create** / **Read** (listing or show a single article) / **Update** / **Delete** articles.






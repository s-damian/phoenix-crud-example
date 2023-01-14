defmodule AppWeb.Admin.ArticleController do
  use AppWeb, :controller

  def new(conn, _params) do
    render(conn, "new.html", text: "Ajouter un article")
  end

  def create(conn, _params) do

  end

  def index(conn, _params) do
    render(conn, "index.html", articles: "Liste des articles")
  end

  def edit(conn, _params) do
    render(conn, "edit.html", article: "Un article à éditer")
  end

  def update(conn, _params) do

  end

  def delete(conn, _params) do

  end
end

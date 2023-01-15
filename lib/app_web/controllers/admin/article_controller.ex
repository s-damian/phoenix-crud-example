defmodule AppWeb.Admin.ArticleController do
  use AppWeb, :controller

  def new(conn, _params) do
    render(conn, "new.html")
  end

  #def create(conn, _params) do

  #end

  def index(conn, _params) do
    render(conn, "index.html")
    #render(conn, "index.html", articles: "Liste des articles")
  end

  def edit(conn, _params) do
    render(conn, "edit.html")
  end

  #def update(conn, _params) do

  #end

  #def delete(conn, _params) do

  #end
end

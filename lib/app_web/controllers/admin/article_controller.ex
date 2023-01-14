defmodule AppWeb.Admin.ArticleController do
  use AppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html", articles: "Liste des articles")
  end
end

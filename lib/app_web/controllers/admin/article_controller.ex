defmodule AppWeb.Admin.ArticleController do
  use AppWeb, :controller

  #alias App.Repo
  alias App.Article

  def index(conn, _params) do
    articles = Article.list_articles()
    render(conn, "index.html", articles: articles)
  end

  def new(conn, _params) do
    changeset = Article.changeset(%Article{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, params) do
    case Article.create_article(params) do
      {:ok, _article} ->
        conn
        |> put_flash(:info, "Added article!")
        |> redirect(to: Routes.article_path(conn, :index))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)

      #{:error, %Ecto.Changeset{} = changeset} ->
      #  conn
      #  |> put_flash(:error, "Oops! Couldn't add article!")
      #  |> redirect(to: Routes.article_path(conn, :new))
    end
  end

  def edit(conn, _params) do
    render(conn, "edit.html")
  end

  #def update(conn, _params) do

  #end

  #def delete(conn, _params) do

  #end
end

defmodule AppWeb.ArticleController do
  use AppWeb, :controller

  alias App.Articles
  alias App.Articles.Article

  def index(conn, _params) do
    articles = Articles.list_articles()
    render(conn, :index, articles: articles)
  end

  def new(conn, _params) do
    changeset = Articles.change_article(%Article{})
    render(conn, :new, changeset: changeset)
  end

  def create(conn, %{"article" => article_params}) do
    case Articles.create_article(article_params) do
      {:ok, article} ->
        conn
        |> put_flash(:info, "Article created successfully.")
        |> redirect(to: ~p"/articles")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    article = Articles.get_article!(id)
    render(conn, :show, article: article)
  end

  def edit(conn, %{"id" => id}) do
    article = Articles.get_article!(id)
    changeset = Articles.change_article(article)
    render(conn, :edit, article: article, changeset: changeset)
  end

  def update(conn, %{"id" => id, "article" => article_params}) do
    article = Articles.get_article!(id)

    case Articles.update_article(article, article_params) do
      {:ok, article} ->
        conn
        |> put_flash(:info, "Article updated successfully.")
        |> redirect(to: ~p"/articles/#{article}/edit")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :edit, article: article, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    article = Articles.get_article!(id)
    {:ok, _article} = Articles.delete_article(article)

    conn
    |> put_flash(:info, "Article deleted successfully.")
    |> redirect(to: ~p"/articles")
  end
end

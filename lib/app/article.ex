defmodule App.Article do
  use Ecto.Schema
  import Ecto.Changeset

  import Ecto.Query, warn: false
  alias App.Repo

  schema "articles" do
    field :content, :string
    field :slug, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(article, attrs \\ %{}) do
    article
    |> cast(attrs, [:title, :slug, :content])
    |> validate_required([:title, :slug, :content])
    |> validate_length(:title, max: 190)
    |> validate_length(:slug, max: 190)
    |> unsafe_validate_unique(:slug, Repo)
  end

  def list_articles() do
    Repo.all(App.Article)
  end

  def create_article(attrs) do
    %App.Article{}
    |> App.Article.changeset(attrs)
    |> Repo.insert()
  end

  #def update_article(%Article{} = article, attrs) do
  #  post
  #  |> App.Article.changeset(attrs)
  #  |> Repo.update()
  #end

  #def delete_article(%Article{} = article) do
  #  Repo.delete(App.Article)
  #end
end

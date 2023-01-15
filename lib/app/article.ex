defmodule App.Article do
  use Ecto.Schema
  import Ecto.Changeset

  schema "articles" do
    field :content, :string
    field :slug, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(article, attrs) do
    article
    |> cast(attrs, [:title, :slug, :content])
    |> validate_required([:title, :slug, :content])
  end
end

defmodule App.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset

  alias App.Repo

  schema "products" do
    field :description, :string
    field :designation, :string
    field :slug, :string

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:designation, :slug, :description])
    |> validate_required([:designation, :slug, :description])
    |> validate_length(:designation, max: 190)
    |> validate_length(:slug, max: 190)
    |> unsafe_validate_unique(:slug, Repo)
  end
end

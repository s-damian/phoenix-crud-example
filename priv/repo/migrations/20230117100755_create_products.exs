defmodule App.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :designation, :string, null: false
      add :slug, :string, null: false
      add :description, :longtext, null: false

      timestamps()
    end

    create unique_index(:products, [:slug])
  end
end

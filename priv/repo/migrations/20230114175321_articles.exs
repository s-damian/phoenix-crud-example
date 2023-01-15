defmodule App.Repo.Migrations.Articles do
  use Ecto.Migration

  def change do
    create table (:articles) do
      add :title, :string, null: false
      add :slug, :string, null: false
      add :content, :longtext, null: false

      timestamps()
    end

    create unique_index(:articles, [:slug])
  end
end

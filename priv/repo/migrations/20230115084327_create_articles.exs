defmodule App.Repo.Migrations.CreateArticles do
  use Ecto.Migration

  def change do
    create table(:articles) do
      add :title, :string, null: false
      add :slug, :string, null: false
      add :content, :string, null: false

      timestamps()
    end

    create unique_index(:articles, [:slug])
  end
end

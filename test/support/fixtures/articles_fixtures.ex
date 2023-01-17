defmodule App.ArticlesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `App.Articles` context.
  """

  @doc """
  Generate a article.
  """
  def article_fixture(attrs \\ %{}) do
    {:ok, article} =
      attrs
      |> Enum.into(%{
        content: "some content",
        slug: "some slug",
        title: "some title"
      })
      |> App.Articles.create_article()

    article
  end
end

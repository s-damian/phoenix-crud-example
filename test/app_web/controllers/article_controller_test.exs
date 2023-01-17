defmodule AppWeb.ArticleControllerTest do
  use AppWeb.ConnCase

  import App.ArticlesFixtures

  @create_attrs %{content: "some content", slug: "some slug", title: "some title"}
  @update_attrs %{content: "some updated content", slug: "some updated slug", title: "some updated title"}
  @invalid_attrs %{content: nil, slug: nil, title: nil}

  describe "index" do
    test "lists all articles", %{conn: conn} do
      conn = get(conn, ~p"/articles")
      assert html_response(conn, 200) =~ "Listing Articles"
    end
  end

  describe "new article" do
    test "renders form", %{conn: conn} do
      conn = get(conn, ~p"/articles/new")
      assert html_response(conn, 200) =~ "New Article"
    end
  end

  describe "create article" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/articles", article: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == ~p"/articles/#{id}"

      conn = get(conn, ~p"/articles/#{id}")
      assert html_response(conn, 200) =~ "Article #{id}"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/articles", article: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Article"
    end
  end

  describe "edit article" do
    setup [:create_article]

    test "renders form for editing chosen article", %{conn: conn, article: article} do
      conn = get(conn, ~p"/articles/#{article}/edit")
      assert html_response(conn, 200) =~ "Edit Article"
    end
  end

  describe "update article" do
    setup [:create_article]

    test "redirects when data is valid", %{conn: conn, article: article} do
      conn = put(conn, ~p"/articles/#{article}", article: @update_attrs)
      assert redirected_to(conn) == ~p"/articles/#{article}"

      conn = get(conn, ~p"/articles/#{article}")
      assert html_response(conn, 200) =~ "some updated content"
    end

    test "renders errors when data is invalid", %{conn: conn, article: article} do
      conn = put(conn, ~p"/articles/#{article}", article: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Article"
    end
  end

  describe "delete article" do
    setup [:create_article]

    test "deletes chosen article", %{conn: conn, article: article} do
      conn = delete(conn, ~p"/articles/#{article}")
      assert redirected_to(conn) == ~p"/articles"

      assert_error_sent 404, fn ->
        get(conn, ~p"/articles/#{article}")
      end
    end
  end

  defp create_article(_) do
    article = article_fixture()
    %{article: article}
  end
end

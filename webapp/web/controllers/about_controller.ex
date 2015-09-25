defmodule Webapp.AboutController do
  use Webapp.Web, :controller

  plug :authenticate
  plug :find_message
  plug :authorize_message

  def show(conn, params) do
    render conn, :show, page: find_page(params["id"])
  end

  defp authenticate(conn, _) do
    case Authenticator.find_user(conn) do
      {:ok, user} ->
        assign(conn, :user, user)
      :error ->
        conn |> put_flash(:info, "You must be logged in") |> redirect(to: "/") |> halt
    end
  end

  defp find_message(conn, _) do
    case find_message(params["id"]) do
      nil ->
        conn |> put_flash(:info, "That message wasn't found") |> redirect(to: "/") |> halt
      message ->
        assign(conn, :message, message)
    end
  end

  defp authorize_message(conn, _) do
    if Authorizer.can_access?(conn.assigns[:user], conn.assigns[:message]) do
      conn
    else
      conn |> put_flash(:info, "You can't access that page") |> redirect(to: "/") |> halt
    end
  end



  def index(conn, _params) do
    render conn, "index.html"
  end

  def test(conn, %{"p" => p} = params) do
    render conn, "test.html", p: p
  end
end

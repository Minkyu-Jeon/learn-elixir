defmodule UrlShortenerWeb.HelloController do
  use UrlShortenerWeb, :controller

  def index(conn, _params) do
    conn
      |> put_resp_content_type("text/plain")
      |> send_resp(201, "")
  end

  def show(conn, %{"messenger" => messenger} = params) do
    conn
      |> assign(:messenger, messenger)
      |> assign(:receiver, "Dweezil")
      |> render("show.html")
  end
end
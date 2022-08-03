defmodule MapAppWeb.MapController do
  #map_app_webのusingを呼び、その中でcontroller関数を使っている
  use MapAppWeb, :controller

  #indexアクションでindex.htmlにレンダリング(表示)している
  def index(conn, _params) do
    render(conn, "index.html")
  end
end

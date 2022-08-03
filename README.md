# MapApp

## プロジェクトの作成

``` elixir
mix phx.new map_app --no-ecto
```

``` elixir
* creating map_app/config/config.exs
* creating map_app/config/dev.exs
* creating map_app/config/prod.exs
* creating map_app/config/runtime.exs
* creating map_app/config/test.exs
* creating map_app/lib/map_app/application.ex
* creating map_app/lib/map_app.ex
* creating map_app/lib/map_app_web/views/error_helpers.ex
* creating map_app/lib/map_app_web/views/error_view.ex
* creating map_app/lib/map_app_web/endpoint.ex
* creating map_app/lib/map_app_web/router.ex
* creating map_app/lib/map_app_web/telemetry.ex
* creating map_app/lib/map_app_web.ex
* creating map_app/mix.exs
* creating map_app/README.md
* creating map_app/.formatter.exs
* creating map_app/.gitignore
* creating map_app/test/support/conn_case.ex
* creating map_app/test/test_helper.exs
* creating map_app/test/map_app_web/views/error_view_test.exs
* creating map_app/lib/map_app_web/controllers/page_controller.ex
* creating map_app/lib/map_app_web/views/page_view.ex
* creating map_app/test/map_app_web/controllers/page_controller_test.exs
* creating map_app/test/map_app_web/views/page_view_test.exs
* creating map_app/assets/vendor/topbar.js
* creating map_app/lib/map_app_web/templates/layout/root.html.heex
* creating map_app/lib/map_app_web/templates/layout/app.html.heex
* creating map_app/lib/map_app_web/templates/layout/live.html.heex
* creating map_app/lib/map_app_web/views/layout_view.ex
* creating map_app/lib/map_app_web/templates/page/index.html.heex
* creating map_app/test/map_app_web/views/layout_view_test.exs
* creating map_app/lib/map_app/mailer.ex
* creating map_app/lib/map_app_web/gettext.ex
* creating map_app/priv/gettext/en/LC_MESSAGES/errors.po
* creating map_app/priv/gettext/errors.pot
* creating map_app/assets/css/phoenix.css
* creating map_app/assets/css/app.css
* creating map_app/assets/js/app.js
* creating map_app/priv/static/robots.txt
* creating map_app/priv/static/images/phoenix.png
* creating map_app/priv/static/favicon.ico

Fetch and install dependencies? [Yn] Y
* running mix deps.get
* running mix deps.compile

We are almost there! The following steps are missing:

    $ cd map_app

Start your Phoenix app with:

    $ mix phx.server

You can also run your app inside IEx (Interactive Elixir) as:

    $ iex -S mix phx.server
```

ディレクトリの移動

```
cd map_app
```

##　Phoneixサーバの立ち上げ

```
mix phx.server
```

# メインページの作成

## ルートの作成

- map_app/map_app_web/router.ex

``` elixir
  scope "/", MapAppWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/map", MapController, :index
  end
```

## コントローラーの作成

- map_app/map_app_web/controllers/map_controller.ex

``` elixir
defmodule MapAppWeb.MapController do
  use MapAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
```

## ビューの作成

- map_app/map_app_web/views/map_view.ex

``` elixir
defmodule MapAppWeb.MapView do
  use MapAppWeb, :view
end
```

## テンプレートの作成

- map_app/map_app_web/templates/map/index.html.heex

``` elixir
<div id="map" style="height: 500px"></div>
<script>
var map = L.map('map').setView([51.505, -0.09], 13);

L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

L.marker([51.5, -0.09]).addTo(map)
    .bindPopup('A pretty CSS3 popup.<br> Easily customizable.')
    .openPopup();
</script>
```

## leafletjsの読み込み

- map_app/map_app_web/templates/layout/root.html.heex

``` elixir
  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="csrf-token" content={csrf_token_value()}>
    <%= live_title_tag assigns[:page_title] || "MapApp", suffix: " · Phoenix Framework" %>
    <link phx-track-static rel="stylesheet" href={Routes.static_path(@conn, "/assets/app.css")}/>
    <script defer phx-track-static type="text/javascript" src={Routes.static_path(@conn, "/assets/app.js")}></script>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.8.0/dist/leaflet.css" integrity="sha512-hoalWLoI8r4UszCkZ5kL8vayOGVae1oxXe/2A4AO6J9+580uKHDO3JdHb7NzwwzK5xr/Fs0W40kiNHxM9vyTtQ==" crossorigin="" />
    <script src="https://unpkg.com/leaflet@1.8.0/dist/leaflet.js" integrity="sha512-BB3hKbKWOc9Ez/TAwyWxNXeoV9c1v6FIeYiBieIWkpLjauysF18NzgR1MBNBXf8/KABdlkX68nAhlwcDFLGPCQ==" crossorigin=""></script>
  </head>
```

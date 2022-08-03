# MapApp

## プロジェクトの作成

```
mix phx.new map_app --no-ecto
```

```
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


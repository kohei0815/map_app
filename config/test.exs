import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :map_app, MapAppWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "fR02FkwLg4siEDOW3h001T7w1821UVZLr088CAm3B8bwuF/ahBp5N0U9w+B7OQOx",
  server: false

# In test we don't send emails.
config :map_app, MapApp.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

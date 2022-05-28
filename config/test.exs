import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :art_collection, ArtCollectionWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "0Of3BwoGq52gl9aOQH3aeWDttykKk5PyEjnMAn/Ss434fPKd2P9fb8xSZwgfhJqa",
  server: false

# In test we don't send emails.
config :art_collection, ArtCollection.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

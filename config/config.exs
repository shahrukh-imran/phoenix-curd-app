# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :crud_app,
  ecto_repos: [CrudApp.Repo]

# Configures the endpoint
config :crud_app, CrudAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "E3DtlFp9/FSlS1zX1e/sDX9aRxlSO98BI0l90QHOsu+NN5w7SB8n/Ud5L+bCBrDS",
  render_errors: [view: CrudAppWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CrudApp.PubSub,
  live_view: [signing_salt: "qnTOnMrG"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

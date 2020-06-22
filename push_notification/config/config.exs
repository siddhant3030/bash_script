# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :push_notification,
  ecto_repos: [PushNotification.Repo]

# Configures the endpoint
config :push_notification, PushNotificationWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aMTo5mRBvvsN2DAGbugiHw+M/CBnHMp+YvoVw8l5GGOhzETXWdS6iDfCvRJlBTBi",
  render_errors: [view: PushNotificationWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: PushNotification.PubSub,
  live_view: [signing_salt: "1iFa4HMZ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

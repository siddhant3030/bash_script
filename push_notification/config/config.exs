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

# config :pigeon, :apns,
#    apns_default: %{
#      key: "priv/cert/AuthKey_HN3FXQ7KHA.p8",
#      key_identifier: "HN3FXQ7KHA",
#      team_id: "29R36ZN6GZ",
#      mode: :dev
#    }

# config :pigeon, :fcm,
#   fcm_default: %{
#     key: "AAAAoCjRqUo:APA91bGCSTWDpGOuVEXO6XH3ibBZji_EhRSNY3AJSOfhlqM8fczlDRURfb5Jxw9SzbkRKFqF5eVQZ3E40Y9MEt_eA6LMlpO4_nC5MnZet93H531NCiPU8QdXMzvBp7R1MbLzCGPieUfZ"
#   }

# config :push_notification, :dynamic_links,
#   firebase_api: System.get_env("FIREBASE_API"),
#   bundle_id: System.get_env("BUNDLE_ID"),
#   app_store_id: System.get_env("APP_STORE_ID")

# config :pigeon, workers: [
#   # {PushNotification.Pigeon, :apns_config},
#   {PushNotification.Pigeon, :fcm_config}
# ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

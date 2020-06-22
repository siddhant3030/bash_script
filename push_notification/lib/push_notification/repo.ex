defmodule PushNotification.Repo do
  use Ecto.Repo,
    otp_app: :push_notification,
    adapter: Ecto.Adapters.Postgres
end

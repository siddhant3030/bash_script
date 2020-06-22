defmodule PushNotification.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      PushNotification.Repo,
      # Start the Telemetry supervisor
      PushNotificationWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: PushNotification.PubSub},
      # Start the Endpoint (http/https)
      PushNotificationWeb.Endpoint
      # Start a worker by calling: PushNotification.Worker.start_link(arg)
      # {PushNotification.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PushNotification.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PushNotificationWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

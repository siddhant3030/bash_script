defmodule PushNotification.Pigeon do
  @moduledoc false

  @push_mode if(Mix.env() == :production, do: :prod, else: :dev)

  # def apns_config do
  #   Pigeon.APNS.ConfigParser.parse(
  #     key: "priv/cert/AuthKey_HN3FXQ7KHA.p8",
  #     key_identifier: "HN3FXQ7KHA",
  #     team_id: "29R36ZN6GZ",
  #     mode: @push_mode,
  #     name: :aplom
  #   )
  # end

  # def fcm_config do
  #   Pigeon.FCM.Config.new(name: :fcm_default, key: System.get_env("FCM_SERVER_KEY"))
  # end
end

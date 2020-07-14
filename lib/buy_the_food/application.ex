defmodule BuyTheFood.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      BuyTheFood.Repo,
      # Start the Telemetry supervisor
      BuyTheFoodWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: BuyTheFood.PubSub},
      # Start the Endpoint (http/https)
      BuyTheFoodWeb.Endpoint
      # Start a worker by calling: BuyTheFood.Worker.start_link(arg)
      # {BuyTheFood.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: BuyTheFood.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    BuyTheFoodWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

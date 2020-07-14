# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :buy_the_food,
  ecto_repos: [BuyTheFood.Repo]

# Configures the endpoint
config :buy_the_food, BuyTheFoodWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LDYZMyortm8dE2DDoU4RHSOgpFJgKYmhR5dPQs3iW839BC1Vd4uu9lD7ab0HI1W2",
  render_errors: [view: BuyTheFoodWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BuyTheFood.PubSub,
  live_view: [signing_salt: "yyCFKvMJ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

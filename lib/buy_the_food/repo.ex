defmodule BuyTheFood.Repo do
  use Ecto.Repo,
    otp_app: :buy_the_food,
    adapter: Ecto.Adapters.Postgres
end

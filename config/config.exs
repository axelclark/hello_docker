# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hello_docker,
  ecto_repos: [HelloDocker.Repo]

# Configures the endpoint
config :hello_docker, HelloDockerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ST6v4k/qASCUzHEUnMXUOievTch7zCTQLe1Hx6EMSE66dXOt1dC1D3Fbm5MV5WvJ",
  render_errors: [view: HelloDockerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HelloDocker.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "j1Cap4sE"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :icu,
  ecto_repos: [Icu.Repo]

# Configures the endpoint
config :icu, IcuWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "odyNXIHlas66Ip8CHPw/DrGbzZK9WwtF7UNEJ6jswV8uyNiVp+MwYbKfNZ0+7rZi",
  render_errors: [view: IcuWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Icu.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

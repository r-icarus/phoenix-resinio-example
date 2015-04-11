use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :phoenix_app, PhoenixApp.Endpoint,
  secret_key_base: "I/YcQuXqGLgyObDAxs7Y2+vQSpRAV+XN26onP2cDWrUpOOlpwz5StSqXkIwxvTe5"

# Configure your database
config :phoenix_app, PhoenixApp.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_app_prod"

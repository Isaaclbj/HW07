use Mix.Config

config :tasks2, Tasks2.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "tasks",
  password: "sub2pews",
  database: "tasks2111_prod",
  pool_size: 10




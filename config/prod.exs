use Mix.Config

config :tasks2, Tasks2Web.Endpoint,
  http: [:inet6, port: {:system, "PORT"}],
  url: [host: "hw07.ezthrowaway.host", port: 80],
  server: true,
  root: ".",
  version: Application.spec(:phoenix_distillery, :vsn),
  cache_static_manifest: "priv/static/cache_manifest.json"

config :logger, level: :info

import_config "prod.secret.exs"

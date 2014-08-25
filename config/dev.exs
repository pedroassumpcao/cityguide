use Mix.Config

config :phoenix, Cityguide.Router,
  port: System.get_env("PORT") || 4000,
  ssl: false,
  host: "localhost",
  cookies: true,
  consider_all_requests_local: true,
  session_key: "_cityguide_key",
  session_secret: "JZMHIH6SREXMVF!ER!H(J8T4UMG)7#1+M1ES1RX74I%WTPCNMOW($&NC6YCO*O6SPY@1ED5%ILJ29WC"

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug



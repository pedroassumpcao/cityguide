use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, Cityguide.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "example.com",
  cookies: true,
  session_key: "_cityguide_key",
  session_secret: "JZMHIH6SREXMVF!ER!H(J8T4UMG)7#1+M1ES1RX74I%WTPCNMOW($&NC6YCO*O6SPY@1ED5%ILJ29WC"

config :logger, :console,
  level: :info,
  metadata: [:request_id]


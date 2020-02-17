defmodule HelloDocker.Repo do
  use Ecto.Repo,
    otp_app: :hello_docker,
    adapter: Ecto.Adapters.Postgres
end

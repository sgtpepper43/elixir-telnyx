# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TelnyxAPI.Connection do
  @moduledoc """
  Handle Tesla connections for TelnyxAPI.
  """

  use Tesla

  # Add any middleware here (authentication)
  plug Tesla.Middleware.BaseUrl, "https://api.telnyx.com/v2"
  plug Tesla.Middleware.Headers, [{"user-agent", "Elixir"}]
  plug Tesla.Middleware.EncodeJson, engine: Poison

  @doc """
  Configure a client connection using Basic authentication.

  ## Parameters

  - username (String): Username used for authentication
  - password (String): Password used for authentication

  # Returns

  Tesla.Env.client
  """
  @spec new(String.t, String.t) :: Tesla.Env.client
  def new(username, password) do
    Tesla.client([
      {Tesla.Middleware.BasicAuth, %{username: username, password: password}}
    ])
  end
  @doc """
  Configure an authless client connection

  # Returns

  Tesla.Env.client
  """
  @spec new() :: Tesla.Env.client
  def new do
    Tesla.client([])
  end
end

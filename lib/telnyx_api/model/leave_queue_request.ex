# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TelnyxAPI.Model.LeaveQueueRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"client_state",
    :"command_id"
  ]

  @type t :: %__MODULE__{
    :"client_state" => String.t | nil,
    :"command_id" => String.t | nil
  }
end

defimpl Poison.Decoder, for: TelnyxAPI.Model.LeaveQueueRequest do
  def decode(value, _options) do
    value
  end
end


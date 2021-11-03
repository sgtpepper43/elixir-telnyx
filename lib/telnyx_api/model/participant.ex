# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule TelnyxAPI.Model.Participant do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"record_type",
    :"id",
    :"call_leg_id",
    :"call_control_id",
    :"conference",
    :"whisper_call_control_ids",
    :"created_at",
    :"updated_at",
    :"end_conference_on_exit",
    :"soft_end_conference_on_exit",
    :"status",
    :"muted",
    :"on_hold"
  ]

  @type t :: %__MODULE__{
    :"record_type" => String.t,
    :"id" => String.t,
    :"call_leg_id" => String.t,
    :"call_control_id" => String.t,
    :"conference" => TelnyxAPI.Model.ParticipantConference.t,
    :"whisper_call_control_ids" => [String.t],
    :"created_at" => String.t,
    :"updated_at" => String.t,
    :"end_conference_on_exit" => boolean(),
    :"soft_end_conference_on_exit" => boolean(),
    :"status" => String.t,
    :"muted" => boolean(),
    :"on_hold" => boolean()
  }
end

defimpl Poison.Decoder, for: TelnyxAPI.Model.Participant do
  import TelnyxAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"conference", :struct, TelnyxAPI.Model.ParticipantConference, options)
  end
end


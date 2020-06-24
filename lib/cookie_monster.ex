defmodule CookieMonster do
  @moduledoc """
  A simple HTTP Cookie encoder and decoder written in pure Elixir with zero
  dependencies.
  """

  alias CookieMonster.Decoder
  alias CookieMonster.Encoder

  @doc """
  Encodes a cookie into a header string
  """
  defdelegate encode(cookie, opts), to: Encoder

  @doc """
  Decodes a Set-Cookie into an Elixir struct
  """
  defdelegate decode(cookie_string), to: Decoder
end

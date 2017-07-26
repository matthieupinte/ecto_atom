@moduledoc """

You can do

defmodule Post do
  use Ecto.Schema
  schema "posts" do
    field :atom_field, Ecto.Atom
  end
end

to get :atom as you get "string" ;)
"""
defmodule Ecto.Atom do
  @behaviour Ecto.Type

  def type, do: :string

  def cast(value) when is_atom(value), do: {:ok, value}
  # `to_string` not working, why ?
  # def cast(value) when is_string(value), do: {:ok, String.to_atom(value)}
  def cast(_), do: :error

  def load(value), do: {:ok, String.to_atom(value)}

  def dump(value) when is_atom(value), do: {:ok, Atom.to_string(value)}
  # `to_string` not working, why ?
  # def dump(value) when is_string(value), do: {:ok, value}
  def dump(_), do: :error
end

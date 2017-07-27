defmodule Ecto.Atom do
  @behaviour Ecto.Type
  @moduledoc """

  You can do :

  defmodule Post do
    use Ecto.Schema
    schema "posts" do
      field :atom_field, Ecto.Atom
    end
  end
  """

  def type, do: :string

  def cast(value) when is_atom(value), do: {:ok, value}
  def cast(_), do: :error

  def load(value), do: {:ok, String.to_atom(value)}

  def dump(value) when is_atom(value), do: {:ok, Atom.to_string(value)}
  def dump(_), do: :error

end

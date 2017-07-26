defmodule Ecto.AtomTest do
  use ExUnit.Case
  doctest Ecto.Atom

  test "cast with an atom" do
    assert Ecto.Atom.cast(:anatom) == {:ok, :anatom}
  end

  test "cast with failure" do
    assert Ecto.Atom.cast(1) == :error
  end

  test "load from a string" do
    assert Ecto.Atom.load("string") == {:ok, :string}
  end

  # `to_string` not working, why ?
  # test "dump string" do
  #   assert Ecto.Atom.dump("string") == {:ok, "string"}
  # end

  test "dump :atom" do
    assert Ecto.Atom.dump(:atom) == {:ok, "atom"}
  end
end

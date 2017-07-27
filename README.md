# Ecto.Atom

Provide an Ecto custom type Ecto.Atom to manage `:atom`.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ecto_atom` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:ecto_atom, "~> 1.0.0"}]
end
```

## Use

```elixir
defmodule MyApp.User do
  use MyApp.Web, :model

  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}

  schema "users" do
    field :email, :string
    field :provider, Ecto.Atom  # :github => 'github' in DB
    field :uid, :string
    field :token, :string
    ...
  end
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ecto_atom](https://hexdocs.pm/ecto_atom).


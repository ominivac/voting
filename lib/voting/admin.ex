defmodule Voting.Admin do
  use Ecto.Schema
  import Ecto.Changeset

  schema "adminstrators" do
    field :email, :string, null: false
    field :name, :string, null: false
    field :passworld_hash, :string, null: false

    timestamps()
  end

  @doc false
  def changeset(admin, attrs) do
    admin
    |> cast(attrs, [:name, :email, :passworld_hash])
    |> validate_required([:name, :email, :passworld_hash])
  end
end

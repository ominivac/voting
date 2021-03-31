defmodule Voting.Repo.Migrations.CreateAdminstrators do
  use Ecto.Migration

  def change do
    create table(:adminstrators) do
      add :name, :string
      add :email, :string
      add :passworld_hash, :string

      timestamps()
    end

  end
end

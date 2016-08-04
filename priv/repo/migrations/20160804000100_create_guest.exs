defmodule JenAndDarren.Repo.Migrations.CreateGuest do
  use Ecto.Migration

  def change do
    create table(:guests) do
      add :name, :string
      add :attending, :boolean, default: false

      timestamps
    end

  end
end

defmodule PlateSlate.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :name, :string
      add :description, :string
      add :price, :decimal
      add :cateory_id, references(:categories, on_delete: :nothing)

      timestamps()
    end

    create index(:items, [:cateory_id])
  end
end

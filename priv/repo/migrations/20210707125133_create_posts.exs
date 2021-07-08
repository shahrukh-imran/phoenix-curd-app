defmodule CrudApp.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :image, :string
      add :description, :string

      timestamps()
    end

  end
end

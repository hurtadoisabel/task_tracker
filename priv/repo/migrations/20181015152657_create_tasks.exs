defmodule TaskTracker.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :title, :string
      add :description, :string
      add :user_assigned, references(:users, on_delete: :delete_all), null: false
      add :completed, :boolean
      timestamps()
    end

  end
end

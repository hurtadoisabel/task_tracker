defmodule TaskTracker.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset


  schema "tasks" do
    field :description, :string
    field :title, :string
    field :user_assigned, :string
    field :completed, :boolean

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:title, :description, :user_assigned, :completed])
    |> validate_required([:title, :description, :user_assigned, :completed])
  end
end

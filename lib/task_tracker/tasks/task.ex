defmodule TaskTracker.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset


  schema "tasks" do
    field :description, :string
    field :title, :string
    field :user_assigned, :string
    field :completed, :boolean

    has_many :time_block, TaskTracker.Time_blocks.Time_block

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:title, :description, :user_assigned, :completed])
    |> validate_required([:title, :description, :user_assigned])
  end

  
end

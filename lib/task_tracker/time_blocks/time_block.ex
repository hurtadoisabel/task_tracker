defmodule TaskTracker.Time_blocks.Time_block do
  use Ecto.Schema
  import Ecto.Changeset


  schema "time_blocks" do
    field :end_time, :utc_datetime
    field :init_time, :utc_datetime
    field :task_id, :id
    
    timestamps()
  end

  @doc false
  def changeset(time_block, attrs) do
    time_block
    |> cast(attrs, [:init_time, :end_time, :task_id])
    
  end
end

defmodule TaskTrackerWeb.Time_blockView do
  use TaskTrackerWeb, :view
  alias TaskTrackerWeb.Time_blockView

  def render("index.json", %{time_blocks: time_blocks}) do
    %{data: render_many(time_blocks, Time_blockView, "time_block.json")}
  end

  def render("show.json", %{time_block: time_block}) do
    %{data: render_one(time_block, Time_blockView, "time_block.json")}
  end

  def render("time_block.json", %{time_block: time_block}) do
    %{id: time_block.id,
      init_time: time_block.init_time,
      end_time: time_block.end_time}
  end
end

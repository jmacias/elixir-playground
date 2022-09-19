defmodule ChatWeb.PageLive do
  use ChatWeb, :live_view
  require Logger
  require MnemonicSlugs

  # def index(conn, _params) do
  #   render(conn, "index.html")
  # end

  @impl true
  def render(assigns) do
    ~H"""
    <button
    phx-click="random-room">
      Create a Random Room</button>
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, query: "", result: %{})}
  end

  @impl true
  def handle_event("random-room", _params, socket) do
    Logger.info("Handling event: random-room ")
    random_slug = "/" <> MnemonicSlugs.generate_slug(4)
    Logger.info("Room " <> random_slug)
    {:noreply, socket}
  end
end

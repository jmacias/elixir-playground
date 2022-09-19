defmodule ChatWeb.RoomLive do
  use ChatWeb, :live_view
  require Logger

  @impl true
  def mount(%{"id" => room_id}, _session, socket) do
    topic = "room" <> room_id
    ChatWeb.Endpoint.subscribe(topic)
    {:ok, assign(socket, room_id: room_id, topic: topic, messages: ["Hola"])}
  end

  @impl true
  def handle_event("submit_message", %{"chat" => %{"message" => message}}, socket) do
    Logger.info(message: message)
    ChatWeb.Endpoint.broadcast(socket.assigns.topic, "new-message", message)
    {:noreply, socket}
  end

  @impl true
  def handle_info(%{event: "new-message", payload: message}, socket) do
    Logger.info(message_payload: message)
    Logger.info(old_messages: socket.assigns.messages)

    {:noreply, assign(socket, messages: socket.assigns.messages ++ [message])}
  end
end

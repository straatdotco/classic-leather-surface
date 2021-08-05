defmodule Leather.Components.Toast do
  use Surface.LiveComponent

  import Leather.LooseOperators, only: [iffy: 2, truthy: 1]

  alias Leather.Components.Button

  data message, :string, default: ""
  data action, :string, default: ""
  data duration, :number, default: 5000
  data time, :number, default: 0

  def render(assigns) do
    content = iffy assigns.action do
      '<span class="text-sm font-normal">#{assigns.message}</span>#{assigns.action}'
    else
      '<span class="text-sm font-normal">#{assigns.message}</span>'
    end

    ~F"""
    <div
      :hook="Toast"
      class="hidden"
      data-content={content}
      data-duration={@duration}
      data-time={@time}
    />
    """
  end

  def show(toast_id, message, action, duration) do
    send_update(
      __MODULE__,
      id: toast_id,
      time: :os.system_time(:millisecond),
      message: message,
      action: action,
      duration: duration
    )
  end
end

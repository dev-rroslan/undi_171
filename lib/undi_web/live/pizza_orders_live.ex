defmodule UndiWeb.PizzaOrdersLive do
  use UndiWeb, :live_view

  alias Undi.PizzaOrders
  import Number.Currency

  def mount(_params, _session, socket) do
    socket =
      assign(socket,
        pizza_orders: PizzaOrders.list_pizza_orders()
      )

    {:ok, socket}
  end
end

defmodule UndiWeb.DonationsLive do
  use UndiWeb, :live_view

  alias Undi.Donations

  def mount(_params, _session, socket) do
    donations = Donations.list_donations()

    socket =
      assign(socket,
        donations: donations
      )

    {:ok, socket}
  end
end

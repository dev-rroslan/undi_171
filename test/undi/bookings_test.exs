defmodule Undi.BookingsTest do
  use ExUnit.Case, async: true

  alias Undi.Bookings

  test "list_bookings/0 returns a list of bookings" do
    [booking | _] = Bookings.list_bookings()

    assert %{from: %Date{}, to: %Date{}} = booking
  end
end

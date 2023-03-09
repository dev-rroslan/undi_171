defmodule Undi.AthletesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Undi.Athletes` context.
  """

  @doc """
  Generate a athlete.
  """
  def athlete_fixture(attrs \\ %{}) do
    {:ok, athlete} =
      attrs
      |> Enum.into(%{
        emoji: "some emoji",
        name: "some name",
        sport: "surfing",
        status: "competing"
      })
      |> Undi.Athletes.create_athlete()

    athlete
  end
end

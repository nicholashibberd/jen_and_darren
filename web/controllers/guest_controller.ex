defmodule JenAndDarren.GuestController do
  use JenAndDarren.Web, :controller

  alias JenAndDarren.Guest

  def index(conn, _params) do
    guests = Repo.all(Guest)
    render(conn, "index.html", guests: guests)
  end

  def create(conn, %{"guest" => guest_params}) do
    changeset = Guest.changeset(%Guest{}, guest_params)

    case Repo.insert(changeset) do
      {:ok, _guest} ->
        conn
        |> put_flash(:info, "Thank you for your RSVP")
        |> redirect(to: page_path(conn, :index))
      {:error, changeset} ->
        conn
        |> put_flash(:error, "Sorry, there was an error, RSVP not saved")
        |> redirect(to: page_path(conn, :index))
    end
  end
end

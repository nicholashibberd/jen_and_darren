defmodule JenAndDarren.PageController do
  use JenAndDarren.Web, :controller

  def index(conn, _params) do
    changeset = JenAndDarren.Guest.changeset(%JenAndDarren.Guest{})
    render(conn, "index.html", changeset: changeset)
  end
end

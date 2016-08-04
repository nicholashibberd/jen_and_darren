defmodule JenAndDarren.Guest do
  use JenAndDarren.Web, :model

  schema "guests" do
    field :name, :string
    field :attending, :boolean, default: false

    timestamps
  end

  @required_fields ~w(name attending)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end

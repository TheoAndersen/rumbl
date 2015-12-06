defmodule Rumb1.UserView do
	use Rumb1.Web, :view
  alias Rumb1.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end

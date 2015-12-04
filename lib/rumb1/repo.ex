defmodule Rumb1.Repo do
  use Ecto.Repo, otp_app: :rumb1

  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end

  def get_by(module, params) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end
  end
  
  def all(Rumb1.User) do
    [%Rumb1.User{id: "1", name: "José", username:  "josevalim", password:  "elixir"},
     %Rumb1.User{Id: "2", name: "Bruce", username: "redropids", password: "7langs"},
     %Rumb1.User{Id: "3", name: "Christ", username: "chrismccord", password: "phx"}]
  end
  
  def all(_module) do
    []
  end
end


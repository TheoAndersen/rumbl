defmodule Rumb1.User do
  use Rumb1.Web, :model

  schema "users" do
    field :name, :string
    field :username, :string
    field :password, :string, virtual: true
    field :password_hash, :string
    
    timestamps
  end
end

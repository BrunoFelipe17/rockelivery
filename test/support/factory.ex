defmodule Rockelivery.Factory do
  use ExMachina.Ecto, repo: Rockelivery.Repo

  alias Rockelivery.User

  def user_params_factory do
    %{
      age: 22,
      address: "Rua do Léo",
      cep: "12345000",
      cpf: "12345678900",
      email: "b@b.com",
      password: "123456",
      name: "Bruno"
    }
  end

  def user_factory do
    %User{
      age: 22,
      address: "Rua do Léo",
      cep: "12345000",
      cpf: "12345678900",
      email: "b@b.com",
      password: "123456",
      name: "Bruno",
      id: "405a8a8a-723e-49f6-a267-6532019845eb"
    }
  end
end

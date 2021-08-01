defmodule Rockelivery.Factory do
  use ExMachina

  def user_params_factory do
    %{
      age: 22,
      address: "Rua do Léo",
      cep: "1234500",
      cpf: "12345678900",
      email: "b@b.com",
      password: "123456",
      name: "Bruno"
    }
  end
end

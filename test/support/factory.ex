defmodule Rockelivery.Factory do
  use ExMachina.Ecto, repo: Rockelivery.Repo

  alias Rockelivery.User

  def user_params_factory do
    %{
      "age" => 22,
      "address" => "Rua do Léo",
      "cep" => "12345000",
      "cpf" => "12345678900",
      "email" => "b@b.com",
      "password" => "123456",
      "name" => "Bruno"
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

  def cep_info_factory do
    %{
      "bairro" => "Sé",
      "cep" => "01001-000",
      "complemento" => "lado ímpar",
      "ddd" => "11",
      "gia" => "1004",
      "ibge" => "3550308",
      "localidade" => "São Paulo",
      "logradouro" => "Praça da Sé",
      "siafi" => "7107",
      "uf" => "SP"
    }
  end
end

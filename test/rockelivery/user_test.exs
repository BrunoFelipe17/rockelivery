defmodule Rockelivery.UserTest do
  use Rockelivery.DataCase, async: true

  import Rockelivery.Factory

  alias Ecto.Changeset
  alias Rockelivery.User

  describe "changeset/2" do
    test "when all params are valid, returns a valid changeset" do
      params = build(:user_params)

      response = User.changeset(params)

      assert %Changeset{changes: %{name: "Bruno"}, valid?: false} = response
    end

    test "when updating a changeset, returns a valid changeset with the given changes" do
      params = %{
        age: 22,
        address: "Rua do Léo",
        cep: "1234500",
        cpf: "12345678900",
        email: "b@b.com",
        password: "123456",
        name: "Bruno"
      }

      update_params = %{name: "Leonardo", password: "123456"}

      response =
        params
        |> User.changeset()
        |> User.changeset(update_params)

      assert %Changeset{changes: %{name: "Leonardo"}, valid?: false} = response
    end

    test "when there are some error, returns an invalid changeset" do
      params = %{
        age: 12,
        address: "Rua do Léo",
        cep: "1234500",
        cpf: "12345678900",
        email: "b@b.com",
        password: "123",
        name: "Bruno"
      }

      response = User.changeset(params)

      expected_response = %{
        age: ["must be greater than or equal to 18"],
        cep: ["should be 8 character(s)"],
        password: ["should be at least 6 character(s)"]
      }

      assert errors_on(response) == expected_response
    end
  end
end
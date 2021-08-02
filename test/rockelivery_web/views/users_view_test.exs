defmodule RockeliveryWeb.UsersViewTest do
  use RockeliveryWeb.ConnCase, async: true

  import Phoenix.View
  import Rockelivery.Factory

  alias RockeliveryWeb.UsersView

  test "renders create.json" do
    user = build(:user)
    response = render(UsersView, "create.json", user: user)

    assert response == %{
             message: "User created",
             user: %Rockelivery.User{
               address: "Rua do Léo",
               age: 22,
               cep: "12345000",
               cpf: "12345678900",
               email: "b@b.com",
               id: "405a8a8a-723e-49f6-a267-6532019845eb",
               inserted_at: nil,
               name: "Bruno",
               password: "123456",
               password_hash: nil,
               updated_at: nil
             }
           }
  end
end

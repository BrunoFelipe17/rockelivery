defmodule Rockelivery.ViaCep.Behaviour do
  @callback get_cep_info(String.t()) :: {:ok, map()} | {:error, Rockelivery.Error.t()}
end

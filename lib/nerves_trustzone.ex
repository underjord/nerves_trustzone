defmodule NervesTrustzone do
  def child_spec(_opts) do
    opts = []

    %{
      id: __MODULE__,
      start: {MuonTrap.Daemon, ["tee-supplicant", [], opts]}
    }
  end
end

defmodule NervesTrustzone do
  @library_path "/usr/lib/libckteec.so.1.1.0"
  def child_spec(_opts) do
    opts = []

    %{
      id: __MODULE__,
      start: {MuonTrap.Daemon, ["tee-supplicant", [], opts]}
    }
  end

  def test_trustzone do
    MuonTrap.cmd("xtest", [])
  end

  def pkcs11_tool_info do
    MuonTrap.cmd("pkcs11-tool", ["--module", "/usr/lib/libckteec.so", "--show-info"])
  end

  def pkcs11_tool_slots do
    MuonTrap.cmd("pkcs11-tool", ["--module", "/usr/lib/libckteec.so", "--show-info"])
  end
end

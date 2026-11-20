class PrivacyGate < Formula
  include Language::Python::Virtualenv

  desc "Local gate that holds health, secret and personal data before it reaches an LLM"
  homepage "https://github.com/YauhenBichel/privacy-gate-llm"
  url "https://files.pythonhosted.org/packages/80/18/2cc35713e86b6df04ffd7bc3c37bd5c84957ab78b84812df57c15611e3ab/molecare_privacy_gate-1.0.0.tar.gz"
  sha256 "9bcf976a851fedc639375577567c735c6570b04e4a97a963296b9334a0bb3b83"
  license "Apache-2.0"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "head_sha256", shell_output("#{bin}/privacy-gate info")
  end
end

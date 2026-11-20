class PrivacyGate < Formula
  include Language::Python::Virtualenv

  desc "Local gate that holds health, secret and personal data before it reaches an LLM"
  homepage "https://yauhenbichel.github.io/privacy-gate-llm/"
  # PyPI distribution renamed to privacy-gate-llm (privacy-gate-llm PR #55); switch url and sha256 to its first sdist.
  url "https://files.pythonhosted.org/packages/5f/fc/9d8c876e379356131ba9d9dd78cf5bcfd91766fea824e68500961f268103/molecare_privacy_gate-1.0.1.tar.gz"
  sha256 "3eb0730e6248593677236c59944af169d4c36bc2a3242b10a628e3be2a704693"
  license "Apache-2.0"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "head_sha256", shell_output("#{bin}/privacy-gate info")
  end
end

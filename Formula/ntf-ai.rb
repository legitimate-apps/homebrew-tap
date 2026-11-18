class NtfAi < Formula
  include Language::Python::Virtualenv

  desc "Phone notifications and replies for AI agents, over the ntfy protocol"
  homepage "https://ntf-ai.app"
  url "https://files.pythonhosted.org/packages/1b/5d/e98076253f5f4f3a2b4050df9b1aedf9c923c4d2ad9bbed50313a2a159bf/ntf_ai-0.4.1.tar.gz"
  sha256 "3164b793a4df60a0b79634d3f8239a02b7683507c6d74ea82f09758476dd1b66"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ntf-ai #{version}", shell_output("#{bin}/ntf --version")
    assert_match "ntf-ai #{version}", shell_output("#{bin}/ntf-ai --version")
    assert_match "phone notifications", shell_output("#{bin}/ntf --help")
  end
end

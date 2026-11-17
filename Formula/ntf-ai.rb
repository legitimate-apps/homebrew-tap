class NtfAi < Formula
  include Language::Python::Virtualenv

  desc "Phone notifications and replies for AI agents, over the ntfy protocol"
  homepage "https://ntf-ai.app"
  url "https://files.pythonhosted.org/packages/e2/92/175696fae3ec94f7682480b388beee3dc355f744bcce4efab82eb2e69faa/ntf_ai-0.4.0.tar.gz"
  sha256 "caa71ec03cec50b9c011e53e1722d3b8e9441399dc5a95391051ffa1d64da40c"
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

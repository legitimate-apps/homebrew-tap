class NtfAi < Formula
  include Language::Python::Virtualenv

  desc "Phone notifications and replies for AI agents, over the ntfy protocol"
  homepage "https://ntf-ai.app"
  url "https://files.pythonhosted.org/packages/40/4d/1ddeb804cdf4d6098a96f51a29a9e2f4e96c19ff5d5c8a696c4fbaa817c9/ntf_ai-0.4.2.tar.gz"
  sha256 "39e32916ff60775cfb8401499fbf3a79f20070fc360b567b117ef6d68bcdd305"
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

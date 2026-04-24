class Pingx < Formula
  include Language::Python::Virtualenv

  desc "Full-screen TUI ping monitor with auto-reconnect and WAN failover detection"
  homepage "https://github.com/Tom-xyz/pingx"
  url "https://github.com/Tom-xyz/pingx/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "87cfe3d22e6c7d36f7a72f3658e45c7f9a054751354038fba737b592de16f06d"
  license "MIT"

  depends_on "python@3.12"

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pingx --version")
  end
end

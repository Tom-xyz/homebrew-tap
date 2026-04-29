class Fflogo < Formula
  desc "Interactive picker for fastfetch ASCII logos with live preview"
  homepage "https://github.com/Tom-xyz/ff-logo-picker"
  url "https://github.com/Tom-xyz/ff-logo-picker/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e1a3d8d56112e0dbc196e6cd262d62c69abccc235eebc4dce8f46c017042266a"
  license "MIT"
  head "https://github.com/Tom-xyz/ff-logo-picker.git", branch: "main"

  depends_on "fastfetch"
  depends_on "fzf"

  def install
    bin.install "bin/fflogo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fflogo --version")
    assert_match "USAGE", shell_output("#{bin}/fflogo --help")
  end
end

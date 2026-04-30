class Fflogo < Formula
  desc "Interactive picker for fastfetch ASCII logos with live preview"
  homepage "https://github.com/Tom-xyz/ff-logo-picker"
  url "https://github.com/Tom-xyz/ff-logo-picker/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "612861863228cc3c893797eafbd2eca2973e1b950d5c089f8e7016c97853e880"
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

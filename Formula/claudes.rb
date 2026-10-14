class Claudes < Formula
  desc "Run multiple isolated Claude Desktop instances on macOS"
  homepage "https://github.com/thomascailhol/claudes"
  url "https://github.com/thomascailhol/claudes/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ff985e4316356dfa6da929a2ac9e57f290e86a7ae75c7bbb017e8682b3605a6f"
  license "MIT"

  # Icons render crisply with rsvg-convert; the tool also falls back to
  # ImageMagick or the built-in qlmanage, but librsvg gives the best result.
  depends_on "librsvg"

  def install
    libexec.install "claudes"
    bin.install_symlink libexec/"claudes"
  end

  test do
    assert_match "claudes #{version}", shell_output("#{bin}/claudes version")
  end
end

class Fansctl < Formula
  desc "macOS fan control & power survey for Apple Silicon — menu bar + CLI, one binary"
  homepage "https://github.com/askender/fansctl"
  url "https://github.com/askender/fansctl/archive/refs/tags/v1.8.0.tar.gz"
  sha256 "6fb81282bc8e0e9a6777a5102dbc97093c548fd90d89bdc8790b172eebd1141b"
  license "AGPL-3.0-or-later"

  depends_on macos: :monterey

  def install
    bin.mkpath
    system "make", "install", "PREFIX=#{bin}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fansctl version")
  end
end

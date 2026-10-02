class Fansctl < Formula
  desc "macOS fan control & power survey for Apple Silicon — menu bar app + CLI in one binary"
  homepage "https://github.com/askender/fansctl"
  url "https://github.com/askender/fansctl/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "a58248f49b2a944d5e30e224a442aaa22f0aa0f9315254c923342efcdc1a597f"
  license "AGPL-3.0-or-later"

  depends_on macos: :monterey

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fansctl version")
  end
end

class Fansctl < Formula
  desc "macOS fan control & power survey for Apple Silicon — menu bar + CLI, one binary"
  homepage "https://github.com/askender/fansctl"
  url "https://github.com/askender/fansctl/archive/refs/tags/v1.7.0.tar.gz"
  sha256 "bc6bebbb6a1f999d830672869152a9601685004aebdc6af139c9c5d7402d13d6"
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

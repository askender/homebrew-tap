class Fansctl < Formula
  desc "macOS fan control & power survey for Apple Silicon — menu bar + CLI, one binary"
  homepage "https://github.com/askender/fansctl"
  url "https://github.com/askender/fansctl/archive/refs/tags/v1.8.1.tar.gz"
  sha256 "f76c0ebb3f4f5d7c05c33e32c65604b8a7bb7649324068b29a10770aa72c78f2"
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

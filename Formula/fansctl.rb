class Fansctl < Formula
  desc "macOS fan control & power survey for Apple Silicon — menu bar + CLI, one binary"
  homepage "https://github.com/askender/fansctl"
  url "https://github.com/askender/fansctl/archive/refs/tags/v1.6.0.tar.gz"
  sha256 "4041e901c262ea1e5eb5152228e8ee0a4748ccbe8b350b714a943fa9ae1e5dc0"
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

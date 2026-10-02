class Fansctl < Formula
  desc "macOS fan control & power survey for Apple Silicon — menu bar + CLI, one binary"
  homepage "https://github.com/askender/fansctl"
  url "https://github.com/askender/fansctl/archive/refs/tags/v1.7.1.tar.gz"
  sha256 "61663f6a4a2abdbb34efb899544a2e384528a3e1879fef149ec21df1bb405cf4"
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

class Throt < Formula
  desc "Throttle noisy triggers to a single delayed command run"
  homepage "https://github.com/<user>/<repo>"

  # Replace with a tagged release tarball and its sha256 to avoid HEAD-only installs.
  url "https://github.com/hmepas/throt/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e5c68eb23e3d0b27cf8188d3b36df8597e824db449a202dad718828bf6832905"
  version "0.1.0"

  head "https://github.com/<user>/<repo>.git", branch: "main"

  def install
    bin.install "throt"
  end

  test do
    assert_match "Usage: throt --delay", shell_output("#{bin}/throt 2>&1", 1)
  end
end

class Throt < Formula
  desc "Throttle noisy triggers to a single delayed command run"
  homepage "https://github.com/<user>/<repo>"
  head "https://github.com/<user>/<repo>.git", branch: "main"

  def install
    bin.install "throt"
  end

  test do
    assert_match "Usage: throt --delay", shell_output("#{bin}/throt 2>&1", 1)
  end
end

class Marklip < Formula
  desc "A lightning-fast clipboard utility for seamless Markdown ⇄ HTML conversion."
  homepage "https://github.com/dayflower/marklip"
  version "0.1.6"
  url "https://github.com/dayflower/marklip/releases/download/v0.1.6/marklip-0.1.6-aarch64-apple-darwin.tar.gz"
  sha256 "9e082da84c9426b8d453a92d0f332ec83ac01ed57c02b3c2fd1b45e5fd60e33d"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "marklip"
  end
end

class Marklip < Formula
  desc "A lightning-fast clipboard utility for seamless Markdown ⇄ HTML conversion."
  homepage "https://github.com/dayflower/marklip"
  version "0.1.1"
  url "placeholder"
  sha256 "placeholder"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "marklip"
  end
end

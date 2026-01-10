class Dispsel < Formula
  desc "A lightning-fast clipboard utility for seamless Markdown ⇄ HTML conversion."
  homepage "https://github.com/dayflower/marklip"
  version "0.1.4"
  url "https://github.com/dayflower/marklip/releases/download/v0.1.4/marklip-0.1.4-aarch64-apple-darwin.tar.gz"
  sha256 "a61440cfc46085a26f261acd2ae231715cc1e3359c26db2439dd1d00694b5d00"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "marklip"
  end
end

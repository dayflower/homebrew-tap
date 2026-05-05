class Pbshow < Formula
  desc "macOS clipboard inspector CLI"
  homepage "https://github.com/dayflower/pbshow"
  version "0.2.0"
  url "https://github.com/dayflower/pbshow/releases/download/v0.2.0/pbshow-0.2.0-macos.zip"
  sha256 "b6084fee2526d9d961cee2112fe3ea747a49ff2a36845a1b27714315674a71aa"

  def install
    bin.install "pbshow"
  end
end

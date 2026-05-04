class Pbshow < Formula
  desc "macOS clipboard inspector CLI"
  homepage "https://github.com/dayflower/pbshow"
  version "0.1.3"
  url "https://github.com/dayflower/pbshow/releases/download/v0.1.3/pbshow-0.1.3-macos.zip"
  sha256 "8012d600cd783d197b953ed9e592ddda153247b49e0f79da26e9530c56f67a06"

  def install
    bin.install "pbshow"
  end
end

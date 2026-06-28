class Pbshow < Formula
  desc "macOS clipboard inspector CLI"
  homepage "https://github.com/dayflower/pbshow"
  version "0.2.1"
  url "https://github.com/dayflower/pbshow/releases/download/v0.2.1/pbshow-0.2.1-macos.zip"
  sha256 "d66b88d79fb01296f8b36fe4fbd5cbaa0315e9b915ff5de07b4b13aeed73cf34"

  def install
    bin.install "pbshow"
  end
end

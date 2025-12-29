class Dispsel < Formula
  desc "CLI tool for switching monitor input sources via DDC/CI"
  homepage "https://github.com/dayflower/dispsel"
  version "0.1.0"
  url "https://github.com/dayflower/dispsel/releases/download/v0.1.0/dispsel-0.1.0-arm64-apple-darwin.tar.gz"
  sha256 "placeholder"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "dispsel"
  end
end

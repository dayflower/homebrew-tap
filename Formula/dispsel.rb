class Dispsel < Formula
  desc "CLI tool for switching monitor input sources via DDC/CI"
  homepage "https://github.com/dayflower/dispsel"
  version "0.1.6"
  url "https://github.com/dayflower/dispsel/releases/download/v0.1.6/dispsel-0.1.6-arm64-apple-darwin.tar.gz"
  sha256 "dfb427d06ad3c986593dafd2ea36ef8a8fa1973da0cd107892a2798159f63a37"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "dispsel"
  end
end

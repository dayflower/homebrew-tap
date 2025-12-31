class Dispsel < Formula
  desc "CLI tool for switching monitor input sources via DDC/CI"
  homepage "https://github.com/dayflower/dispsel"
  version "0.1.4"
  url "https://github.com/dayflower/dispsel/releases/download/v0.1.4/dispsel-0.1.4-arm64-apple-darwin.tar.gz"
  sha256 "242b56b00768a25bdf5f28c68dd89fe9048f82220d756ed3badc2a45a479c66d"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "dispsel"
  end
end

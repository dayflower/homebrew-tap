class Dispsel < Formula
  desc "CLI tool for switching monitor input sources via DDC/CI"
  homepage "https://github.com/dayflower/dispsel"
  version "0.1.3"
  url "https://github.com/dayflower/dispsel/releases/download/v0.1.3/dispsel-0.1.3-arm64-apple-darwin.tar.gz"
  sha256 "a0f16a438a5a5f029db6d20e638282baae9091a21f1015546b21e9a875a3ddd6"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "dispsel"
  end
end

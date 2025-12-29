class Dispsel < Formula
  desc "CLI tool for switching monitor input sources via DDC/CI"
  homepage "https://github.com/dayflower/dispsel"
  version "0.1.2"
  url "https://github.com/dayflower/dispsel/releases/download/v0.1.2/dispsel-0.1.2-arm64-apple-darwin.tar.gz"
  sha256 "93393f587d9a373699806cb8dbb002c355b07926006db8abda823d284932823f"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "dispsel"
  end
end

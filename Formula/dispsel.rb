class Dispsel < Formula
  desc "CLI tool for switching monitor input sources via DDC/CI"
  homepage "https://github.com/dayflower/dispsel"
  version "0.1.5"
  url "https://github.com/dayflower/dispsel/releases/download/v0.1.5/dispsel-0.1.5-arm64-apple-darwin.tar.gz"
  sha256 "522183c65ba723341014925b98d9e0f516664a499ee3804571d804fc2736b665"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "dispsel"
  end
end

class Echoview < Formula
  desc "ECHONET Lite command-line tool"
  homepage "https://github.com/dayflower/echoview"
  version "0.1.1"
  license "MIT"

  url "https://github.com/dayflower/echoview/releases/download/v0.1.1/echoview_0.1.1_darwin_arm64.tar.gz"
  sha256 "f175d90c1adec1c97d2ef3366c0ad880d6c9484b93b5b65d5a33a5c509bd1ceb"

  depends_on :macos
  depends_on arch: :arm64

  def install
    libexec.install "echoview", "catalog"
    bin.write_exec_script libexec/"echoview"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/echoview --version").strip
    assert_path_exists libexec/"catalog/echonet_lite_catalog.yaml"
  end
end

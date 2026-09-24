class Echoview < Formula
  desc "ECHONET Lite command-line tool"
  homepage "https://github.com/dayflower/echoview"
  version "0.1.2"
  license "MIT"

  url "https://github.com/dayflower/echoview/releases/download/v0.1.2/echoview_0.1.2_darwin_arm64.tar.gz"
  sha256 "8b4f5403226689018c91fa977a868528381a35999c9a11d25f46eab66bb4bd0a"

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

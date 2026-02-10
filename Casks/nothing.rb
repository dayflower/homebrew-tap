cask "nothing" do
  version "0.1.0"
  sha256 "03e65a77000817919d364394955e483cec4fe735361890a01abb3caa7b16c20d"

  url "https://github.com/dayflower/nothing/releases/download/v#{version}/NothingStatusBar-macOS.zip"
  name "nothing"
  desc "Status bar app"
  homepage "https://github.com/dayflower/nothing"

  depends_on arch: :arm64

  app "NothingStatusBar.app"
end

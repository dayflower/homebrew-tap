cask "marklip-launcher" do
  version "0.1.3"
  sha256 "bd70a96d01960c48af95fb07edd498c146a0bea9d31aadc0d8b00cade3a13868"

  url "https://github.com/dayflower/marklip-launcher/releases/download/v#{version}/Marklip-Launcher-#{version}.zip"
  name "marklip-launcher"
  desc "Status bar app integrating marklip CLI for clipboard Markdown/HTML conversion"
  homepage "https://github.com/dayflower/marklip-launcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64
  depends_on formula: "dayflower/tap/marklip"

  app "Marklip Launcher.app"

  caveats <<~EOS
    This application is signed with ad-hoc signature.
    You need to run 'xattr -d com.apple.quarantine Marklip\\ Launcher.app'
    after installation to open it."
  EOS
end

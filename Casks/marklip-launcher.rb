cask "marklip-launcher" do
  version "0.1.0"
  sha256 "5d766c538d92bd6af90ed2f9be56d4e2167d3c2739a3bf60f79bb0d8f97ee1af"

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

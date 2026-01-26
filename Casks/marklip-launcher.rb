cask "marklip-launcher" do
  version "0.1.2"
  sha256 "d9f8e020580bbbf181378c56effde4599cdb1c687633f45b4042196b252f8387"

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

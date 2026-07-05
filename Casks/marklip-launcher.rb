cask "marklip-launcher" do
  version "0.2.0"
  sha256 "9dc856a37a273c6b3154c1afc996838773ba4654acab2ed3afe34010ad50cfa2"

  url "https://github.com/dayflower/marklip-launcher/releases/download/v0.2.0/Marklip-Launcher-0.2.0.zip",
      verified: "github.com/dayflower/marklip-launcher/"
  name "marklip-launcher"
  desc "Status bar app integrating marklip CLI for clipboard Markdown/HTML conversion"
  homepage "https://github.com/dayflower/marklip-launcher"

  depends_on macos: :ventura
  depends_on arch: :arm64
  depends_on formula: "dayflower/tap/marklip"

  app "Marklip Launcher.app"

  caveats <<~EOS
    This application is signed with ad-hoc signature.
    You need to run 'xattr -d com.apple.quarantine Marklip\\ Launcher.app'
    after installation to open it.
  EOS
end

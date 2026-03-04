cask "signboard" do
  version "0.3.0"
  sha256 "3652304822ecb573d234424b0b123e926be04fe62110a4cf2c8097ade35ea2d2"

  url "https://github.com/dayflower/Signboard/releases/download/v#{version}/SignboardApp-#{version}.zip"
  name "Signboard"
  desc "Floating desktop text panels with menu bar control and CLI automation"
  homepage "https://github.com/dayflower/Signboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "SignboardApp.app"
  binary "SignboardApp.app/Contents/MacOS/signboard"

  caveats <<~EOS
    This application is signed with ad-hoc signature.
    You need to run 'xattr -dr com.apple.quarantine SignboardApp.app'
    after installation to open it."
  EOS
end

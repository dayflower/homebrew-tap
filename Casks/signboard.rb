cask "signboard" do
  version "0.3.1"
  sha256 "a1095854528f040870bbaa65c8d9986b11712adba4e836ea992b172dd6c3caba"

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

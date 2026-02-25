cask "signboard" do
  version "0.2.0"
  sha256 "c620ba7fb8bb23012e22fbd10f13e57a3865b35d5ff26a8f8c7f9adf200a79c7"

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

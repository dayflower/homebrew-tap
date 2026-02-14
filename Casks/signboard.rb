cask "signboard" do
  version "0.1.0"
  sha256 "2951a1e17d826811f26cd55b8f86c8a6045c6cb503f0300ed5231eb5f5a1fce6"

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

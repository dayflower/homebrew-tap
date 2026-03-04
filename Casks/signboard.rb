cask "signboard" do
  version "0.2.2"
  sha256 "c4cbe57199a00b4645b85ea80340a80472c9dfdc73c11bd7cf262208d291b49e"

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

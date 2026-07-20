cask "wakeroad" do
  version "0.1.0"
  sha256 "f1efa8fe3b3db6ffa96faabdb88fd2062d4f3702603a804907632202f7032839"

  url "https://github.com/dayflower/wakeroad/releases/download/v0.1.0/WakeRoad-0.1.0.zip",
      verified: "github.com/dayflower/wakeroad/"
  name "WakeRoad"
  desc "Menu bar app that keeps a Mac awake while AI coding agents are working"
  homepage "https://github.com/dayflower/wakeroad"

  depends_on macos: :ventura

  app "WakeRoad.app"

  caveats <<~EOS
    This application is signed with an ad-hoc signature.
    You need to run 'xattr -dr com.apple.quarantine /Applications/WakeRoad.app'
    after installation to open it.
  EOS
end

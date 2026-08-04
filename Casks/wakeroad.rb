cask "wakeroad" do
  version "0.3.0"
  sha256 "14978abe4f14ace8207568cc1a3c5b19ccd81aab4b5f234854bf362624613479"

  url "https://github.com/dayflower/wakeroad/releases/download/v0.3.0/WakeRoad-0.3.0.zip",
      verified: "github.com/dayflower/wakeroad/"
  name "WakeRoad"
  desc "Menu bar app that keeps a Mac awake while AI coding agents are working"
  homepage "https://github.com/dayflower/wakeroad"

  depends_on macos: :ventura

  app "WakeRoad.app"
  binary "#{appdir}/WakeRoad.app/Contents/Helpers/wakeroad"
end

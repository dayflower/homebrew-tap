cask "wakeroad" do
  version "0.2.1"
  sha256 "82bce150f57b4ea7e1003bdbde1b00ecbb4438e04079fd835d6a95443b8ca625"

  url "https://github.com/dayflower/wakeroad/releases/download/v0.2.1/WakeRoad-0.2.1.zip",
      verified: "github.com/dayflower/wakeroad/"
  name "WakeRoad"
  desc "Menu bar app that keeps a Mac awake while AI coding agents are working"
  homepage "https://github.com/dayflower/wakeroad"

  depends_on macos: :ventura

  app "WakeRoad.app"
  binary "#{appdir}/WakeRoad.app/Contents/Helpers/wakeroad"
end

cask "wakeroad" do
  version "0.3.1"
  sha256 "23a5e4f87c19f7c9857700c8831a184aa3442cd1cad06d4db25eaeee2f6c61ba"

  url "https://github.com/dayflower/wakeroad/releases/download/v0.3.1/WakeRoad-0.3.1.zip",
      verified: "github.com/dayflower/wakeroad/"
  name "WakeRoad"
  desc "Menu bar app that keeps a Mac awake while AI coding agents are working"
  homepage "https://github.com/dayflower/wakeroad"

  depends_on macos: :ventura

  app "WakeRoad.app"
  binary "#{appdir}/WakeRoad.app/Contents/Helpers/wakeroad"
end

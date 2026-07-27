cask "lidlock" do
  version "0.2.0"
  sha256 "492e3682277a695be81fc1b91490f1a7be7fa4bc5d836128a7faa3b03af8f10c"

  url "https://github.com/dayflower/lidlock/releases/download/v0.2.0/LidLock-0.2.0.zip",
      verified: "github.com/dayflower/lidlock/"
  name "LidLock"
  desc "Menu-bar app that locks or sleeps a Mac in clamshell mode"
  homepage "https://github.com/dayflower/lidlock"

  depends_on macos: :ventura

  app "LidLock.app"
end

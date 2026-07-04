cask "lidlock" do
  version "0.1.2"
  sha256 "9af3f4fceca01286c6d73280d8649795951f16b2d3b9e3fc200a571aac79a9ee"

  url "https://github.com/dayflower/lidlock/releases/download/v0.1.2/LidLock-0.1.2.zip",
      verified: "github.com/dayflower/lidlock/"
  name "LidLock"
  desc "Menu-bar app that locks or sleeps a Mac in clamshell mode"
  homepage "https://github.com/dayflower/lidlock"

  depends_on macos: ">= :ventura"

  app "LidLock.app"

  caveats <<~EOS
    This application is signed with an ad-hoc signature.
    You need to run 'xattr -dr com.apple.quarantine /Applications/LidLock.app'
    after installation to open it.
  EOS
end

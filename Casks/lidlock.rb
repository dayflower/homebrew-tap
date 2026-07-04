cask "lidlock" do
  version "0.1.4"
  sha256 "da348f010fa8795fbebb8299157d3bceba62045ae759a06a927cbb3a6df522e1"

  url "https://github.com/dayflower/lidlock/releases/download/v0.1.4/LidLock-0.1.4.zip",
      verified: "github.com/dayflower/lidlock/"
  name "LidLock"
  desc "Menu-bar app that locks or sleeps a Mac in clamshell mode"
  homepage "https://github.com/dayflower/lidlock"

  depends_on macos: :ventura

  app "LidLock.app"

  caveats <<~EOS
    This application is signed with an ad-hoc signature.
    You need to run 'xattr -dr com.apple.quarantine /Applications/LidLock.app'
    after installation to open it.
  EOS
end

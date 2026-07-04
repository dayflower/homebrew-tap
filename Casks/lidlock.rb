cask "lidlock" do
  version "0.1.3"
  sha256 "b1cff924f1d331c37c58dd9529e1d4bfe9f81d15346a94f59c4fa38753513df4"

  url "https://github.com/dayflower/lidlock/releases/download/v0.1.3/LidLock-0.1.3.zip",
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

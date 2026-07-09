cask "sizeenforcer" do
  version "0.1.0"
  sha256 "afd9db2e4ed89e29360c6ff01ade10f75e7e7154dd58e5111eea4979f27f1a48"

  url "https://github.com/dayflower/SizeEnforcer/releases/download/v0.1.0/SizeEnforcer-0.1.0.zip",
      verified: "github.com/dayflower/SizeEnforcer/"
  name "SizeEnforcer"
  desc "Menu-bar app that resizes other apps' windows to preset sizes"
  homepage "https://github.com/dayflower/SizeEnforcer"

  depends_on macos: :sequoia

  app "SizeEnforcer.app"

  caveats <<~EOS
    This application is signed with an ad-hoc signature.
    You need to run 'xattr -dr com.apple.quarantine /Applications/SizeEnforcer.app'
    after installation to open it.
  EOS
end

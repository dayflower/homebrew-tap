cask "sizeenforcer" do
  version "0.2.0"
  sha256 "ca58110447c450a91992e6f6e842f0c744f7ef1a2e02d5f2c3b0118392b19e29"

  url "https://github.com/dayflower/SizeEnforcer/releases/download/v0.2.0/SizeEnforcer-0.2.0.zip",
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

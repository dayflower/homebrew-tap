cask "sizeenforcer" do
  version "0.3.0"
  sha256 "dc429de6b3f2ebff0e49c06d3823cb309de8c1a18cc5f528597b658e310049e3"

  url "https://github.com/dayflower/SizeEnforcer/releases/download/v0.3.0/SizeEnforcer-0.3.0.zip",
      verified: "github.com/dayflower/SizeEnforcer/"
  name "SizeEnforcer"
  desc "Menu-bar app that resizes other apps' windows to preset sizes"
  homepage "https://github.com/dayflower/SizeEnforcer"

  depends_on macos: :sequoia

  app "SizeEnforcer.app"
end

cask "signboard" do
  version "0.4.0"
  sha256 "101c6b68b680a1cddc1b40245f6fe36d26218719b49c5f0c8279a4d96003df76"

  url "https://github.com/dayflower/Signboard/releases/download/v0.4.0/SignboardApp-0.4.0.zip",
      verified: "github.com/dayflower/Signboard/"
  name "Signboard"
  desc "Floating desktop text panels with menu bar control and CLI automation"
  homepage "https://github.com/dayflower/Signboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "SignboardApp.app"
  binary "SignboardApp.app/Contents/MacOS/signboard"
end

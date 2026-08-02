cask "popmark" do
  version "1.5.0"
  sha256 "a4d84cd65744b0e8bd1da477c43aa9fa4dd1b0da05b0c93cb217cf3f301c35fd"

  url "https://github.com/dayflower/popmark/releases/download/v1.5.0/popmark-1.5.0-macos.zip"
  name "Popmark"
  desc "Markdown scratch-pad with global hotkey"
  homepage "https://github.com/dayflower/popmark"

  app "Popmark.app"

  zap trash: [
    "~/Library/Application Support/com.eula.dayflower.popmark",
    "~/Library/Preferences/com.eula.dayflower.popmark.plist",
  ]
end

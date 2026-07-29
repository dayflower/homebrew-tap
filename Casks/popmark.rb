cask "popmark" do
  version "1.4.0"
  sha256 "82e70e580689ff473306e5f290aa596fad8c2976b55015a948fd1fa6c385c9a9"

  url "https://github.com/dayflower/popmark/releases/download/v1.4.0/popmark-1.4.0-macos.zip"
  name "Popmark"
  desc "Markdown scratch-pad with global hotkey"
  homepage "https://github.com/dayflower/popmark"

  app "Popmark.app"

  zap trash: [
    "~/Library/Application Support/com.eula.dayflower.popmark",
    "~/Library/Preferences/com.eula.dayflower.popmark.plist",
  ]
end

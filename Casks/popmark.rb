cask "popmark" do
  version "0.3.3"
  sha256 "55515e23aa4ca5772ddafe696b5f9196051d870cabab0ff8e8eee98fa683110a"

  url "https://github.com/dayflower/popmark/releases/download/v0.3.3/popmark-0.3.3-macos.zip"
  name "Popmark"
  desc "Markdown scratch-pad with global hotkey"
  homepage "https://github.com/dayflower/popmark"

  app "Popmark.app"

  caveats <<~EOS
    This application is signed with ad-hoc signature.
    You need to run 'xattr -dr com.apple.quarantine Popmark.app'
    after installation to open it."
  EOS

  zap trash: [
    "~/Library/Application Support/com.eula.dayflower.popmark",
    "~/Library/Preferences/com.eula.dayflower.popmark.plist",
  ]
end

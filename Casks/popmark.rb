cask "popmark" do
  version "1.2.0"
  sha256 "7d6ee54641136c0024b5044e360632f815200cef3fdbcaae4b8a1da8b1d5531a"

  url "https://github.com/dayflower/popmark/releases/download/v1.2.0/popmark-1.2.0-macos.zip"
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

cask "popmark" do
  version "0.3.0"
  sha256 "3fb4beb50a5e3fd120d3b941b8690fbe2ad445e8e549517f892567f4ccfedbd1"

  url "https://github.com/dayflower/popmark/releases/download/v0.3.0/popmark-0.3.0-macos.zip"
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

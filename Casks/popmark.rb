cask "popmark" do
  version "1.3.2"
  sha256 "c27c049d98e43ae02c2f8f52f71e27f9ba50d03c0f6a9d0bbfc738f3c14d9e99"

  url "https://github.com/dayflower/popmark/releases/download/v1.3.2/popmark-1.3.2-macos.zip"
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

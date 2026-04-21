cask "popmark" do
  version "0.4.0"
  sha256 "2d2c56307086464c656d4aa2b5d6a395e9ed9bf69d64e20eb05f0929d1681f1e"

  url "https://github.com/dayflower/popmark/releases/download/v0.4.0/popmark-0.4.0-macos.zip"
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

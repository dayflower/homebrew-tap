cask "popmark" do
  version "1.0.2"
  sha256 "67e39f4569c8368c5f537caa55b5b76ee9409f83eadc05b69acf08b5c6b90d60"

  url "https://github.com/dayflower/popmark/releases/download/v1.0.2/popmark-1.0.2-macos.zip"
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

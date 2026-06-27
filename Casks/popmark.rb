cask "popmark" do
  version "1.3.3"
  sha256 "a3d680b01e1504265baba5a1079d12d0732fe086d2842a248eea3c633d5c4a61"

  url "https://github.com/dayflower/popmark/releases/download/v1.3.3/popmark-1.3.3-macos.zip"
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

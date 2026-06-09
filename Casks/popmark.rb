cask "popmark" do
  version "1.0.3"
  sha256 "103d74ef6a5e66057bcf538bda9a924e8664f4b8a038b27a2350fde9b310c288"

  url "https://github.com/dayflower/popmark/releases/download/v1.0.3/popmark-1.0.3-macos.zip"
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

cask "popmark" do
  version "1.0.1"
  sha256 "a10c006a12dca94948e6348a7416660a9457a5b18dd67de5e9f84ee3e54ab449"

  url "https://github.com/dayflower/popmark/releases/download/v1.0.1/popmark-1.0.1-macos.zip"
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

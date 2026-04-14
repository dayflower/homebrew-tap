cask "popmark" do
  version "0.2.0"
  sha256 "9abe3b97c3338f8efd048d218cfb4e2a629592d0894cdd0729456062bb060ed4"

  url "https://github.com/dayflower/popmark/releases/download/v0.2.0/popmark-0.2.0-macos.zip"
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

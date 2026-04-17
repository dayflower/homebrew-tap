cask "popmark" do
  version "0.3.1"
  sha256 "2551852ad5efc8be35abc2c504d680b7e6e54e3fed451a30c16e4c58cd06e959"

  url "https://github.com/dayflower/popmark/releases/download/v0.3.1/popmark-0.3.1-macos.zip"
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

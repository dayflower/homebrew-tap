cask "popmark" do
  version "1.0.0"
  sha256 "891d9128e941f921d3507c3f605e7bb9c647de29c63ecc64a396b23fb8983dae"

  url "https://github.com/dayflower/popmark/releases/download/v1.0.0/popmark-1.0.0-macos.zip"
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

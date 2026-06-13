cask "popmark" do
  version "1.1.0"
  sha256 "e55b9972269d554a545810b6f72e94f574e0944a221dd797097f113ab2909718"

  url "https://github.com/dayflower/popmark/releases/download/v1.1.0/popmark-1.1.0-macos.zip"
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

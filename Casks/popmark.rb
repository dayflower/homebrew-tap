cask "popmark" do
  version "0.1.4"
  sha256 "d7ab9407448943c74a0d3e248e5ab3aeb3fd7f5c7e6be3040f619036368981b1"

  url "https://github.com/dayflower/popmark/releases/download/v0.1.4/popmark-0.1.4-macos.zip"
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

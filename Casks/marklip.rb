cask "marklip" do
  version "0.4.0"
  sha256 "77fa6b003ace72a2417622a9d8faabdbcb45921806e0c76edbf6a122abdd6dea"

  url "https://github.com/dayflower/marklip/releases/download/v0.4.0/Marklip-0.4.0.zip",
      verified: "github.com/dayflower/marklip/"
  name "Marklip"
  desc "Clipboard Markdown/HTML converter with a status bar launcher"
  homepage "https://github.com/dayflower/marklip"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Marklip Launcher.app"
  # The CLI is embedded in the app bundle, so one cask installs both. This points
  # at the installed location rather than the staged one, which is how Homebrew
  # exposes an app-embedded executable on PATH.
  binary "#{appdir}/Marklip Launcher.app/Contents/Resources/bin/marklip"

  zap trash: [
    "~/Library/LaunchAgents/io.github.dayflower.marklip.plist",
  ]
end

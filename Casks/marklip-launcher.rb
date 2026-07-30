cask "marklip-launcher" do
  version "0.3.0"
  sha256 "11b9bbdb1f133e7d013f2f7c56c22a42e3383fae52a3c5a2b3d8c3f37ad347b1"

  url "https://github.com/dayflower/marklip-launcher/releases/download/v0.3.0/Marklip-Launcher-0.3.0.zip",
      verified: "github.com/dayflower/marklip-launcher/"
  name "marklip-launcher"
  desc "Status bar app integrating marklip CLI for clipboard Markdown/HTML conversion"
  homepage "https://github.com/dayflower/marklip-launcher"

  depends_on macos: :ventura
  depends_on arch: :arm64
  depends_on formula: "dayflower/tap/marklip"

  app "Marklip Launcher.app"
end

cask "live-transcriber" do
  version "0.2.2"
  sha256 "4004c8f120dec314742cd8f67a4a3fbfef90079b38c94a1e661d5041da1a1862"

  url "https://github.com/dayflower/LiveTranscriber/releases/download/v0.2.2/LiveTranscriber-0.2.2.zip",
      verified: "github.com/dayflower/live-transcriber/"
  name "LiveTranscriber"
  desc "Real-time on-device speech transcription menu bar app for macOS"
  homepage "https://github.com/dayflower/live-transcriber"

  depends_on macos: :tahoe

  app "LiveTranscriber.app"
end

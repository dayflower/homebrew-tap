cask "live-transcriber" do
  version "0.2.0"
  sha256 "6bf1ba951fff32e332a3946dd692cb462984862aab7b2b24d911cdb33af73a7d"

  url "https://github.com/dayflower/LiveTranscriber/releases/download/v0.2.0/LiveTranscriber-0.2.0.zip",
      verified: "github.com/dayflower/live-transcriber/"
  name "LiveTranscriber"
  desc "Real-time on-device speech transcription menu bar app for macOS"
  homepage "https://github.com/dayflower/live-transcriber"

  depends_on macos: :tahoe

  app "LiveTranscriber.app"
end

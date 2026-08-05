cask "live-transcriber" do
  version "0.2.1"
  sha256 "faf9092e617c3ac9044ccdbe722a8c9eef36aa18cf0c6e72662da313b72b6861"

  url "https://github.com/dayflower/LiveTranscriber/releases/download/v0.2.1/LiveTranscriber-0.2.1.zip",
      verified: "github.com/dayflower/live-transcriber/"
  name "LiveTranscriber"
  desc "Real-time on-device speech transcription menu bar app for macOS"
  homepage "https://github.com/dayflower/live-transcriber"

  depends_on macos: :tahoe

  app "LiveTranscriber.app"
end

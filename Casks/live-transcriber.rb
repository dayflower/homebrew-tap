cask "live-transcriber" do
  version "0.1.0"
  sha256 "450baa88f8a11cdeacb4da3aaa59943eeb4499cf98c824463d4049a19d0efd96"

  url "https://github.com/dayflower/LiveTranscriber/releases/download/v0.1.0/LiveTranscriber-0.1.0.zip",
      verified: "github.com/dayflower/live-transcriber/"
  name "LiveTranscriber"
  desc "Real-time on-device speech transcription menu bar app for macOS"
  homepage "https://github.com/dayflower/live-transcriber"

  depends_on macos: :tahoe

  app "LiveTranscriber.app"
end

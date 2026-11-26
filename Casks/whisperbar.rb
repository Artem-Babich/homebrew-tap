cask "whisperbar" do
  version "0.1.0"
  sha256 "dfb49772fde1f2c844903224b289258c800b958d70ca1682cf41ccfb0241e88b"

  url "https://github.com/Artem-Babich/whisperbar/releases/download/v#{version}/WhisperBar-#{version}.dmg"
  name "WhisperBar"
  desc "Local push-to-talk dictation with a live preview bar"
  homepage "https://github.com/Artem-Babich/whisperbar"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "WhisperBar.app"

  zap trash: [
    "~/Library/Application Support/WhisperBar",
    "~/Library/Logs/WhisperBar",
  ]
end

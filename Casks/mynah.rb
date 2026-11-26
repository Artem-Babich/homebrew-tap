cask "mynah" do
  version "0.3.0"
  sha256 "6a12379edc0c32ae09a7fd93075675fb88a0dfde8aad8b1f4d9e3bf67b9c4db3"

  url "https://github.com/Artem-Babich/mynah/releases/download/v#{version}/Mynah-#{version}.dmg"
  name "Mynah"
  desc "Local push-to-talk dictation with a live preview bar"
  homepage "https://github.com/Artem-Babich/mynah"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Mynah.app"

  zap trash: [
    "~/Library/Application Support/Mynah",
    "~/Library/Logs/Mynah",
  ]
end

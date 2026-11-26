cask "mynah" do
  version "0.3.1"
  sha256 "f5194b030b9597987137505c268e1331886f6660af4c808ce32673e882651466"

  url "https://github.com/Artem-Babich/mynah/releases/download/v#{version}/Mynah-#{version}.dmg"
  name "Mynah"
  desc "Local push-to-talk dictation with a live preview bar"
  homepage "https://github.com/Artem-Babich/mynah"

  depends_on macos: ">= :sonoma"

  app "Mynah.app"

  zap trash: [
    "~/Library/Application Support/Mynah",
    "~/Library/Logs/Mynah",
  ]
end

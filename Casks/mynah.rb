cask "mynah" do
  version "0.2.0"
  sha256 "0b50139f26eea3fbdd38669dfdd3f12970b60c7b39d42052e39ab556b1c14b72"

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

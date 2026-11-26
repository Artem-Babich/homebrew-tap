cask "fn-lock" do
  version "0.1.1"
  sha256 "ce21faa7be54217e92eedea09d138494620f6a88333f9ba6a49c71485644e4b6"

  url "https://github.com/Artem-Babich/mac-fn-lock/releases/download/v#{version}/FnLock-#{version}.dmg"
  name "FnLock"
  desc "Hold the fn key to switch the top row between F1–F12 and media keys"
  homepage "https://github.com/Artem-Babich/mac-fn-lock"

  depends_on macos: :ventura

  app "FnLock.app"
  binary "#{appdir}/FnLock.app/Contents/MacOS/fnlock"

  uninstall quit: "rs.babich.fnlock"

  zap trash: [
    "~/Library/Logs/fnlock.log",
    "~/Library/Preferences/rs.babich.fnlock.plist",
  ]
end

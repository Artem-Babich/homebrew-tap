cask "fn-lock" do
  version "0.1.0"
  sha256 "eb13c0c0a3f5289663620783acb0284659cdbcde9f25f39779037b63cde053ee"

  url "https://github.com/Artem-Babich/mac-fn-lock/releases/download/v#{version}/FnLock-#{version}.dmg"
  name "FnLock"
  desc "Hold the fn key to switch the top row between F1–F12 and media keys"
  homepage "https://github.com/Artem-Babich/mac-fn-lock"

  depends_on macos: ">= :ventura"

  app "FnLock.app"
  binary "#{appdir}/FnLock.app/Contents/MacOS/fnlock"

  uninstall quit: "rs.babich.fnlock"

  zap trash: [
    "~/Library/Logs/fnlock.log",
    "~/Library/Preferences/rs.babich.fnlock.plist",
  ]
end

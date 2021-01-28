cask "prs-atm" do
  version "1.0.4"
  sha256 "f873249568f78e4d3695d1297ba4f9a9443f6055d7e2a3e67c5a0a4745778aba"

  url "https://github.com/Press-One/PRS-ATM-APP/releases/download/v#{version}/PRS-ATM-#{version}.dmg",
      verified: "github.com/Press-One/PRS-ATM-APP/"
  appcast "https://github.com/Press-One/PRS-ATM-APP/releases.atom"
  name "PRS-ATM"
  desc "An Electron Wrap of https://github.com/Press-One/prs-atm."
  homepage "https://press.one/"

  auto_updates true

  app "PRS ATM.app"
  binary "#{appdir}/PRS ATM.app/Contents/Resources/MacOS/PRS ATM"

  zap trash: [
    "~/Library/Application Support/PRS ATM",
    "~/Library/Saved Application State/one.press.atm.savedState",
  ]
end

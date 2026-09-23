cask "oryx" do
  version "1.2.0"
  sha256 "a71ae65449a52849a3297f9bf0e20424f75238fb4ddf85e06f9405dddf558c85"

  url "https://github.com/wmahfoudh/oryx/releases/download/v#{version}/oryx-#{version}-macos-universal.dmg"
  name "Oryx"
  desc "Fast editor for markdown and code, reader for ebooks and comics"
  homepage "https://github.com/wmahfoudh/oryx"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Oryx.app"

  zap trash: [
    "~/Library/Application Support/oryx",
    "~/Library/Caches/oryx",
  ]

  caveats <<~EOS
    Oryx is not notarized by Apple, so macOS refuses the first open.
    Open System Settings, Privacy & Security, and click Open Anyway.
    This is needed once.
  EOS
end

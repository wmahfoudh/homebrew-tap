cask "oryx" do
  version "1.2.1"
  sha256 "a9f1f89e2d5e627a8f59ac5c8ae0a116f10ede3d73fbd607309ea9e3fd758c34"

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

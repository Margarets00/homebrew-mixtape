# Homebrew Cask formula — lives in https://github.com/Margarets00/homebrew-mixtape
# Install: brew tap Margarets00/mixtape && brew install --cask mixtape
#
# CI auto-updates version + sha256 on each release via update-homebrew-tap.sh

cask "mixtape" do
  version "0.2.2"
  sha256 "664ba5c6b8b49932fd92e70773728df9afcf0fe299ce8cdf1790d04359267549"

  url "https://github.com/Margarets00/mixtape/releases/download/v#{version}/mixtape_#{version}_universal-np.dmg"
  name "mixtape"
  desc "Personal YouTube music downloader with a Y2K retro aesthetic"
  homepage "https://github.com/Margarets00/mixtape"

  app "mixtape.app"

  # yt-dlp and ffmpeg are required but not bundled in this variant
  depends_on formula: "yt-dlp"
  depends_on formula: "ffmpeg"

  caveats <<~EOS
    mixtape requires yt-dlp and ffmpeg (installed automatically as dependencies).
  EOS
end

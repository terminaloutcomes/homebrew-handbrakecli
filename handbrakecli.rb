class Handbrakecli < Formula
  desc "HandBrake CLI"
  homepage "https://handbrake.fr/downloads2.php"
  version "1.3.3"
  license "GPLv2"

  depends_on :mp4v2
  
  url "https://github.com/HandBrake/HandBrake/releases/download/#{version}/HandBrakeCLI-#{version}.dmg"
  sha256 "833b6cd98a2e43121d1de2ba0d7d9b4dbf76244967d3cdbaa2fc3cd1a3500f0a"
  #name "HandBrakeCLI"
  def install
    bin.install "HandBrakeCLI"
  end
end
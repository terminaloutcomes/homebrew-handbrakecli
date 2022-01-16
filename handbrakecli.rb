class Handbrakecli < Formula
  desc "HandBrake CLI"
  homepage "https://api.github.com/repos/HandBrake/HandBrake/releases/latest"
  version "1.3.3"
  license "GPLv2"

  # https://handbrake.fr/rotation.php?file=HandBrakeCLI-1.5.1.dmg
  # https://github.com/HandBrake/HandBrake/releases/download/1.5.1/HandBrakeCLI-1.5.1.dmg
  url "https://github.com/HandBrake/HandBrake/releases/download/#{version}/HandBrakeCLI-#{version}.dmg"
  sha256 "833b6cd98a2e43121d1de2ba0d7d9b4dbf76244967d3cdbaa2fc3cd1a3500f0a"
  def install
    bin.install "HandBrakeCLI"
  end
end
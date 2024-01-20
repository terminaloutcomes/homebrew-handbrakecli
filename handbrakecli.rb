class Handbrakecli < Formula
  desc "HandBrake CLI"
  homepage "https://api.github.com/repos/HandBrake/HandBrake/releases/latest"
  version "1.7.2"
  license "GPLv2"

  # https://handbrake.fr/rotation.php?file=HandBrakeCLI-1.5.1.dmg
  # https://github.com/HandBrake/HandBrake/releases/download/1.5.1/HandBrakeCLI-1.5.1.dmg
  url "https://github.com/HandBrake/HandBrake/releases/download/#{version}/HandBrakeCLI-#{version}.dmg"
  sha256 "4211f704e8fa39968a85b23b880ee5bfaf7b575dca1fecfc94788fe449d38666"
  def install
    bin.install "HandBrakeCLI"
  end
end
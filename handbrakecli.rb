class Handbrakecli < Formula
  desc "HandBrake CLI"
  homepage "https://api.github.com/repos/HandBrake/HandBrake/releases/latest"
  version "1.7.3"
  license "GPLv2"

  # https://handbrake.fr/rotation.php?file=HandBrakeCLI-1.5.1.dmg
  # https://github.com/HandBrake/HandBrake/releases/download/1.5.1/HandBrakeCLI-1.5.1.dmg
  url "https://github.com/HandBrake/HandBrake/releases/download/#{version}/HandBrakeCLI-#{version}.dmg"
  sha256 "aa6039c6e7a7bcecff333540459feee3d257b60b41a63f3562912be6b72ab4af"
  def install
    bin.install "HandBrakeCLI"
  end
end
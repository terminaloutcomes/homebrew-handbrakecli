class Handbrakecli < Formula
  desc "HandBrake CLI"
  homepage "https://api.github.com/repos/HandBrake/HandBrake/releases/latest"
  version "1.6.1"
  license "GPLv2"

  # https://handbrake.fr/rotation.php?file=HandBrakeCLI-1.5.1.dmg
  # https://github.com/HandBrake/HandBrake/releases/download/1.5.1/HandBrakeCLI-1.5.1.dmg
  url "https://github.com/HandBrake/HandBrake/releases/download/#{version}/HandBrakeCLI-#{version}.dmg"
  sha256 "b96fe8b363be2398f62efc1061f08992f93f748540f30262557889008b806009"
  def install
    bin.install "HandBrakeCLI"
  end
end
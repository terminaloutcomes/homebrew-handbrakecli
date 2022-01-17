class Handbrakecli < Formula
  desc "HandBrake CLI"
  homepage "https://api.github.com/repos/HandBrake/HandBrake/releases/latest"
  version "1.5.0"
  license "GPLv2"

  # https://handbrake.fr/rotation.php?file=HandBrakeCLI-1.5.1.dmg
  # https://github.com/HandBrake/HandBrake/releases/download/1.5.1/HandBrakeCLI-1.5.1.dmg
  url "https://github.com/HandBrake/HandBrake/releases/download/#{version}/HandBrakeCLI-#{version}.dmg"
  sha256 "328ad1fbacb855b644b63899450c004cb18e5e819ad519549c4c4bc863a60f90"
  def install
    bin.install "HandBrakeCLI"
  end
end
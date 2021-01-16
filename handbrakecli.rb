cask "handbrakecli" do
  version "1.3.3"
  sha256 "833b6cd98a2e43121d1de2ba0d7d9b4dbf76244967d3cdbaa2fc3cd1a3500f0a"

  url "https://github.com/HandBrake/HandBrake/releases/download/#{version}/HandBrakeCLI-#{version}.dmg"
  appcast "https://osomac.com/appcasts/handbrakebatch/HandBrakeBatch.xml"
  name "HandBrakeCLI"
  homepage "https://handbrake.fr/downloads2.php"

  app "HandBrakeCLI.app"
end
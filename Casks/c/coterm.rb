cask "coterm" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  desc "CoTerm is a CLI tool by Datadog for terminal recording and approvals."
  homepage "https://docs.datadoghq.com/coterm/"
  version "0.3.13"

  url "https://coterm.datadoghq.com/coterm/#{version}/6168e9c/#{os}-#{arch}/ddcoterm"

  sha256 arm:          "a41da9a54dc21e03a4592720928ee1c020651f014eb74233271dfed079c38fd4",
         x86_64:       "a64dec0dabf316199feb4e04c293dd81df37491bd521fda2cfd52ff8baad0003",
         arm64_linux:  "48be6a7f999a9bf3c4687d6acedd54a571ba4407128a2f88129e384ddc86042c",
         x86_64_linux: "ecf83071ed64b54aa5876719bf277149134cb46feefd05577f95a81463f55222"

  binary "ddcoterm"

  caveats <<~EOS
If this is your first time installing CoTerm: run 'ddcoterm init' to log in and set up your configuration.
  EOS

end

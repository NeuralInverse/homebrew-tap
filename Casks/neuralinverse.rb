cask "neuralinverse" do
  version "1.0.1-beta"

  on_arm do
    url "https://github.com/NeuralInverse/cli-release/releases/download/v#{version}/neuralinverse-darwin-arm64",
        verified: "github.com/NeuralInverse/cli-release/"
    sha256 "15ebe8fa05f5a344229f2920c1b5d88eb47bb48687bfc9eefb780d2125d388e8"

    binary "neuralinverse-darwin-arm64", target: "neuralinverse"
  end

  on_intel do
    url "https://github.com/NeuralInverse/cli-release/releases/download/v#{version}/neuralinverse-darwin-x64",
        verified: "github.com/NeuralInverse/cli-release/"
    sha256 "d2c48a7907caa7f3520ea7b042f69cc64c29154e0b2f4c9893f0ef2691cc17d6"

    binary "neuralinverse-darwin-x64", target: "neuralinverse"
  end

  name "Neural Inverse CLI"
  desc "AI-powered terminal assistant — bring your own LLM"
  homepage "https://neuralinverse.com"

  livecheck do
    url :url
    strategy :github_latest
  end
end

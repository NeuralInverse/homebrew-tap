cask "neuralinverse-cli" do
  version "1.0.0-beta"

  on_arm do
    url "https://github.com/NeuralInverse/cli-release/releases/download/v#{version}/neuralinverse-darwin-arm64",
        verified: "github.com/NeuralInverse/cli-release/"
    sha256 "5b519092e8f9e701b2bd56cffdf18a0442186f6cee66a60b006a25c73ba9945c"

    binary "neuralinverse-darwin-arm64", target: "neuralinverse"
  end

  on_intel do
    url "https://github.com/NeuralInverse/cli-release/releases/download/v#{version}/neuralinverse-darwin-x64",
        verified: "github.com/NeuralInverse/cli-release/"
    sha256 "5ed8087c34f5f49577ad90c57f8e1fab421c624e4917328ef8e459abdba3b0ab"

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

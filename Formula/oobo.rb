class Oobo < Formula
  desc "AI coding analytics — track sessions, tokens, attribution across all your AI tools"
  homepage "https://oobo.ai"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ooboai/oobo/releases/download/v1.0.2/oobo-v1.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "5b6e7490db7c2c40261dc51a1c69e91a61f6a7168b64babbcf93f8ab1c6a4907"
    end
    on_intel do
      url "https://github.com/ooboai/oobo/releases/download/v1.0.2/oobo-v1.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "a1b9a2010efbe71458d9569fc7e75e6869cbd35e5b917c37dafe436e72fb434e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ooboai/oobo/releases/download/v1.0.2/oobo-v1.0.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2019d5104fd6e1f588b99e1611b2932d8df77c1690cfb717fe910784cc6db179"
    end
    on_intel do
      url "https://github.com/ooboai/oobo/releases/download/v1.0.2/oobo-v1.0.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1b9e454bf189517c3c1f163e933707fbcfaa27f17255929232431e27083a94b5"
    end
  end

  def install
    bin.install "oobo"
  end

  test do
    assert_match "oobo", shell_output("#{bin}/oobo --version")
  end
end

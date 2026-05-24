class Oobo < Formula
  desc "AI coding analytics — track sessions, tokens, attribution across all your AI tools"
  homepage "https://oobo.ai"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ooboai/oobo/releases/download/v1.0.0/oobo-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "816d315dbb4d71c90b95ee8c9a9e96fa5001f5fb3e576526c31638f1df4d0147"
    end
    on_intel do
      url "https://github.com/ooboai/oobo/releases/download/v1.0.0/oobo-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "5593dd2380e823a9135d3a3df1ca9c57250af4ca65062c405bd4c2b3efdf51e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ooboai/oobo/releases/download/v1.0.0/oobo-v1.0.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4b4104384c1f3e5bcfdbf1bee3d6aefdde4eafd58f8a495ffdb04c72c206d386"
    end
    on_intel do
      url "https://github.com/ooboai/oobo/releases/download/v1.0.0/oobo-v1.0.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "53d690b783d984c350b86b750920abb46874b3c10ebf5a9ac64b2257d4752e15"
    end
  end

  def install
    bin.install "oobo"
  end

  test do
    assert_match "oobo", shell_output("#{bin}/oobo --version")
  end
end

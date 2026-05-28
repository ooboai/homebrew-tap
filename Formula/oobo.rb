class Oobo < Formula
  desc "AI coding analytics — track sessions, tokens, attribution across all your AI tools"
  homepage "https://oobo.ai"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ooboai/oobo/releases/download/v1.1.0/oobo-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "5835732749e264ef64f52d7194b093d7f72e8dd8cc3c0fe2ed2cebf82ca6ff06"
    end
    on_intel do
      url "https://github.com/ooboai/oobo/releases/download/v1.1.0/oobo-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "837a980d87307bc6be98c617543570e849b9cbb1b45da706fca1e59bce249219"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ooboai/oobo/releases/download/v1.1.0/oobo-v1.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dd940c325189e5904949eb4a49dbcec6b9d296f4f42c21610d81c808357edf40"
    end
    on_intel do
      url "https://github.com/ooboai/oobo/releases/download/v1.1.0/oobo-v1.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "55b98cd4c63f122024cc506e996156c5cbbc8133dcc7e24a4c1a820a498ba598"
    end
  end

  def install
    bin.install "oobo"
  end

  test do
    assert_match "oobo", shell_output("#{bin}/oobo --version")
  end
end

class Oobo < Formula
  desc "AI coding analytics — track sessions, tokens, attribution across all your AI tools"
  homepage "https://oobo.ai"
  version "0.1.15"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ooboai/oobo/releases/download/v0.1.15/oobo-v0.1.15-aarch64-apple-darwin.tar.gz"
      sha256 "651645d5effec9a2b2bb1fbb98c25d2f7fd4a292bf506dc2cd8565c1f11656c6"
    end
    on_intel do
      url "https://github.com/ooboai/oobo/releases/download/v0.1.15/oobo-v0.1.15-x86_64-apple-darwin.tar.gz"
      sha256 "bca05c7b517f61113fd905521fb3afbe17f923a36aa572a07f82bb2659d8a9b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ooboai/oobo/releases/download/v0.1.15/oobo-v0.1.15-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0b5c6e43c8815fbbaa87a3daec0dbf697d74398f4c62d8a3ca4c04aa8230ba77"
    end
    on_intel do
      url "https://github.com/ooboai/oobo/releases/download/v0.1.15/oobo-v0.1.15-x86_64-unknown-linux-musl.tar.gz"
      sha256 "80250a4b3ce3a2819dd79c72b61966c2df76ec4b5f2cc6087c011655fe0e7d52"
    end
  end

  def install
    bin.install "oobo"
  end

  test do
    assert_match "oobo", shell_output("#{bin}/oobo --version")
  end
end

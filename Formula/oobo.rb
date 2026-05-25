class Oobo < Formula
  desc "AI coding analytics — track sessions, tokens, attribution across all your AI tools"
  homepage "https://oobo.ai"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ooboai/oobo/releases/download/v1.0.3/oobo-v1.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "d988a3e10e0a747d8f790e2ba1735b65635653acaf9cff5cd2c8701ddb470475"
    end
    on_intel do
      url "https://github.com/ooboai/oobo/releases/download/v1.0.3/oobo-v1.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "ba2cd8f30e92ef032ab170ec5e7c181da371d4ead38bad630f860f53b008e0d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ooboai/oobo/releases/download/v1.0.3/oobo-v1.0.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ec043380a52b789f523fd03ac76404108469b3a2551532e62e0cd0309b203e3c"
    end
    on_intel do
      url "https://github.com/ooboai/oobo/releases/download/v1.0.3/oobo-v1.0.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fdf554579fb84133b66f85fc03341b03a0c28807357b5adac9c1a26e3034a4d3"
    end
  end

  def install
    bin.install "oobo"
  end

  test do
    assert_match "oobo", shell_output("#{bin}/oobo --version")
  end
end

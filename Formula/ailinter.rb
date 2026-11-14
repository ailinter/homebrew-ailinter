class Ailinter < Formula
  desc "AI-powered code quality linter and safety visor for AI-assisted development"
  homepage "https://github.com/ailinter/ailinter"
  version "v1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ailinter/ailinter/releases/download/v1.1.1/ailinter_v1.1.1_darwin_arm64"
      sha256 "ae66be78254f02e8a80a229c4a4bf2a6309c79be6be760d3cc13c033f495ccc2"
    else
      url "https://github.com/ailinter/ailinter/releases/download/v1.1.1/ailinter_v1.1.1_darwin_amd64"
      sha256 "b7b241e43313ffab84193abec059fe3a85667a902ec25814d810afa81d2fa563"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ailinter/ailinter/releases/download/v1.1.1/ailinter_v1.1.1_linux_arm64"
      sha256 "1a9b2f20c603270339e4a11d44b7a23ea36aa788ce6a8713b00ba4ee87eb8a14"
    else
      url "https://github.com/ailinter/ailinter/releases/download/v1.1.1/ailinter_v1.1.1_linux_amd64"
      sha256 "f511ad7336a91d46c20a46d31e45885ddb74ddc8d121124b690219746981a798"
    end
  end

  def install
    bin.install Dir["*"].first => "ailinter"
  end
end

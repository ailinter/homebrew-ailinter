class Ailinter < Formula
  desc "AI-powered code quality linter and safety visor for AI-assisted development"
  homepage "https://github.com/ailinter/ailinter"
  version "v1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ailinter/ailinter/releases/download/v1.1.0/ailinter_v1.1.0_darwin_arm64"
      sha256 "6b12d9c5d650328767dbec09c52b48728517fc12fca892f7434aebda3800b578"
    else
      url "https://github.com/ailinter/ailinter/releases/download/v1.1.0/ailinter_v1.1.0_darwin_amd64"
      sha256 "f2784239d6443925fea137b2a059509f1753b335e6976181707f0b78221cd929"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ailinter/ailinter/releases/download/v1.1.0/ailinter_v1.1.0_linux_arm64"
      sha256 "61bb81755c23cd395bfda511d900830c8fbbba9a5b9c092246c1e3e5d5fa7b4b"
    else
      url "https://github.com/ailinter/ailinter/releases/download/v1.1.0/ailinter_v1.1.0_linux_amd64"
      sha256 "fad7a1754d4808a50b316f7022b1a234bf63f7f5e3ae4fea91598b0c43d5992e"
    end
  end

  def install
    bin.install Dir["*"].first => "ailinter"
  end
end

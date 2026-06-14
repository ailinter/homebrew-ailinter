class Ailinter < Formula
  desc "AI-powered code quality linter and safety visor for AI-assisted development"
  homepage "https://github.com/ailinter/ailinter"
  version "v1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ailinter/ailinter/releases/download/v1.0.0/ailinter_v1.0.0_darwin_arm64"
      sha256 "185777e3d17ffe739653b6fa505f4e71c9b86b2b95897abc49d8d85592ef1d70"
    else
      url "https://github.com/ailinter/ailinter/releases/download/v1.0.0/ailinter_v1.0.0_darwin_amd64"
      sha256 "0b8f69b8d7e0ec0e6a25f0169392e9a2ed6e183dd4dcfcc79e93a417a37f9acc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ailinter/ailinter/releases/download/v1.0.0/ailinter_v1.0.0_linux_arm64"
      sha256 "2096bde679a3d6b6892d3e557af0492691488470382f1d0b74e3d6fc0a06d209"
    else
      url "https://github.com/ailinter/ailinter/releases/download/v1.0.0/ailinter_v1.0.0_linux_amd64"
      sha256 "8af90bbf28fa6b9ddb353a359bce3446309cab9808a12fb3cd627baa8c7ad6ca"
    end
  end

  def install
    bin.install Dir["*"].first => "ailinter"
  end
end

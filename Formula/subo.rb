class Subo < Formula
  desc "The Suborbital CLI for building and deploying WebAssembly-based projects."
  homepage "https://suborbital.dev"
  head "https://github.com/suborbital/subo.git"
  url "https://github.com/suborbital/subo/archive/v0.2.0.tar.gz"
  sha256 "cacb5dd7c065715febc81886c2baffc8221e6106f6b0c0e8176fe427fed2f2f7"
  version "0.2.0"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    system "go", "build", "-o", bin/"subo", "./subo"
  end

  test do
    system "#{bin}/subo --version"
  end
end

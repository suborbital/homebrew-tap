class Subo < Formula
  desc "The Suborbital CLI for building and deploying WebAssembly-based projects."
  homepage "https://suborbital.dev"
  head "https://github.com/suborbital/subo.git"
  url "https://github.com/suborbital/subo/archive/v0.2.2.tar.gz"
  sha256 "155e9085cabbc3e6c17600f89b2dc380bb667a5fb108834adccbd20b52a626f4"
  version "0.2.2"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    system "go", "build", "-o", bin/"subo"
  end

  test do
    system "#{bin}/subo --version"
  end
end

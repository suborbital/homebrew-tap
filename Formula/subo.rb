class Subo < Formula
  desc "The Suborbital CLI for building and deploying WebAssembly-based projects."
  homepage "https://suborbital.dev"
  head "https://github.com/suborbital/subo.git"
  url "https://github.com/suborbital/subo/archive/v0.1.0.tar.gz"
  sha256 "abad52f2b250d9b5ee6ec5310c090d1e25c04fb50dcacae1ab5ad7f40591bbef"
  version "0.1.0"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    system "go", "build", "-o", bin/"subo", "./subo"
  end

  test do
    system "#{bin}/subo --version"
  end
end

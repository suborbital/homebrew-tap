class Subo < Formula
  desc "The Suborbital CLI for building and deploying WebAssembly-based projects."
  homepage "https://suborbital.dev"
  head "https://github.com/suborbital/subo.git"
  url "https://github.com/suborbital/subo/archive/v0.0.22.tar.gz"
  sha256 "7e8aa072f816f3985ae8d5a99fae0fa3ca6c922d71c813e147d7a0f9bff57016"
  version "0.0.22"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    system "go", "build", "-o", bin/"subo", "./subo"
  end

  test do
    system "#{bin}/subo --version"
  end
end

class Subo < Formula
  desc "The Suborbital CLI for building and deploying WebAssembly-based projects."
  homepage "https://suborbital.dev"
  head "https://github.com/suborbital/subo.git"
  url "https://github.com/suborbital/subo/archive/v0.0.19.tar.gz"
  sha256 "9e5614cfe1e4dcd95f69c09024d81d69512c6d6d0625ab215db1183a4aa2b51c"
  version "0.0.19"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    system "go", "build", "-o", bin/"subo", "./subo"
  end

  test do
    system "#{bin}/subo --version"
  end
end

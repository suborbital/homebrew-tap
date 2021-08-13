class Subo < Formula
  desc "The Suborbital CLI for building and deploying WebAssembly-based projects."
  homepage "https://suborbital.dev"
  head "https://github.com/suborbital/subo.git"
  url "https://github.com/suborbital/subo/archive/v0.0.20.tar.gz"
  sha256 "19cba3943fe6ef502b0cb43c1dae7aef49c36dcfe440eea6e7d8d1ad2003884b"
  version "0.0.20"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    system "go", "build", "-o", bin/"subo", "./subo"
  end

  test do
    system "#{bin}/subo --version"
  end
end

class Subo < Formula
  desc "The Suborbital CLI for building and deploying WebAssembly-based projects."
  homepage "https://suborbital.dev"
  head "https://github.com/suborbital/subo.git"
  url "https://github.com/suborbital/subo/archive/v0.0.18.tar.gz"
  sha256 "a898f1ec5a42afaac69a1315f8533af997cf80c8436abd54e46318a451683b9a"
  version "0.0.18"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    system "go", "build", "-o", ".bin/subo", "./subo"
    prefix.install Dir[".build/*"]
  end

  test do
    system "#{bin}/subo --version"
  end
end

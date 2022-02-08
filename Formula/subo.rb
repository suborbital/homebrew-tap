class Subo < Formula
  desc "The Suborbital CLI for building and deploying WebAssembly-based projects."
  homepage "https://suborbital.dev"
  head "https://github.com/suborbital/subo.git"
  url "https://download.suborbital.network/subo/brew/0.3.2"
  sha256 "3b3207b8b8a115e35f6d12791053c61cbbd19d96c0422ec4b5942b007a2e9ab1"
  version "0.3.2"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    system "go", "build", "-o", bin/"subo"
  end

  test do
    system "#{bin}/subo --version"
  end
end

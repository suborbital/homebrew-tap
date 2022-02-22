class Subo < Formula
  desc "The Suborbital CLI for building and deploying WebAssembly-based projects."
  homepage "https://suborbital.dev"
  head "https://github.com/suborbital/subo.git"
  url "https://download.suborbital.network/subo/brew/0.4.0"
  sha256 "12066b8d336f9007bdc335cebb9c5ebc97f1588da7b0ed704462af11b29e5c46"
  version "0.4.0"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    system "go", "build", "-o", bin/"subo"
  end

  test do
    system "#{bin}/subo --version"
  end
end

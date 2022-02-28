class Subo < Formula
  desc "The Suborbital CLI for building and deploying WebAssembly-based projects."
  homepage "https://suborbital.dev"
  head "https://github.com/suborbital/subo.git"
  url "https://download.suborbital.network/subo/brew/0.4.1"
  sha256 "8f160871d1cc0f9f05795305441cf0620c231769221e51e1e607d46f62d7b5c7"
  version "0.4.1"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    system "go", "build", "-o", bin/"subo"
  end

  test do
    system "#{bin}/subo --version"
  end
end

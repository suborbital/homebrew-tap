class Subo < Formula
  desc "The Suborbital CLI for building and deploying WebAssembly-based projects."
  homepage "https://suborbital.dev"
  head "https://github.com/suborbital/subo.git"
  url "https://download.suborbital.network/subo/brew/0.4.2"
  sha256 "a4f635a405097b70e362d47bcba61c38ab8270316a59b952f6abd7236a42a62f"
  version "0.4.2"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    system "go", "build", "-o", bin/"subo"
  end

  test do
    system "#{bin}/subo --version"
  end
end

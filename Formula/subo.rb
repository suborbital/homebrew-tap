class Subo < Formula
  desc "Suborbital CLI for building and deploying WebAssembly-based projects"
  homepage "https://suborbital.dev"
  url "https://download.suborbital.network/subo/brew/0.4.2"
  sha256 "a4f635a405097b70e362d47bcba61c38ab8270316a59b952f6abd7236a42a62f"
  head "https://github.com/suborbital/subo.git"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    system "go", "build", "-o", "subo"

    bin.install "subo"

    bash_output = Utils.safe_popen_read(bin/"subo", "completion", "bash")
    (bash_completion/"subo").write bash_output

    zsh_output = Utils.safe_popen_read(bin/"subo", "completion", "zsh")
    (zsh_completion/"_subo").write zsh_output

    fish_output = Utils.safe_popen_read(bin/"subo", "completion", "fish")
    (fish_completion/"subo.fish").write fish_output
  end

  test do
    assert_match "Subo CLI v#{version}", shell_output("#{bin}/subo --version")
  end
end

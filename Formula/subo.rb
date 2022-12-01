# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Subo < Formula
  desc "Suborbital CLI for building and deploying WebAssembly-based projects"
  homepage "https://suborbital.dev"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/suborbital/subo/releases/download/v0.6.0/subo-v0.6.0-darwin-arm64.tar.gz"
      sha256 "03902e67340c61799ff6d5a97189ed0650e7cdc88a495e679e752df5ad647783"

      def install
        bin.install "subo"

        bash_output = Utils.safe_popen_read(bin/"subo", "completion", "bash")
        (bash_completion/"subo").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"subo", "completion", "zsh")
        (zsh_completion/"_subo").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"subo", "completion", "fish")
        (fish_completion/"subo.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/suborbital/subo/releases/download/v0.6.0/subo-v0.6.0-darwin-amd64.tar.gz"
      sha256 "44d3efdc43eacaf8976d51fbe8f63e1ea196acb7e816fe795d942b98d6fba7f9"

      def install
        bin.install "subo"

        bash_output = Utils.safe_popen_read(bin/"subo", "completion", "bash")
        (bash_completion/"subo").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"subo", "completion", "zsh")
        (zsh_completion/"_subo").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"subo", "completion", "fish")
        (fish_completion/"subo.fish").write fish_output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/suborbital/subo/releases/download/v0.6.0/subo-v0.6.0-linux-arm64.tar.gz"
      sha256 "89bae72e11fea97a087689865f0f38e26e181d34aef0ef9db5a2041268feaf26"

      def install
        bin.install "subo"

        bash_output = Utils.safe_popen_read(bin/"subo", "completion", "bash")
        (bash_completion/"subo").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"subo", "completion", "zsh")
        (zsh_completion/"_subo").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"subo", "completion", "fish")
        (fish_completion/"subo.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/suborbital/subo/releases/download/v0.6.0/subo-v0.6.0-linux-amd64.tar.gz"
      sha256 "12199ac6989a685cc192de55edc2b4ffc9d549192d98953a91191fe36396fc1a"

      def install
        bin.install "subo"

        bash_output = Utils.safe_popen_read(bin/"subo", "completion", "bash")
        (bash_completion/"subo").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"subo", "completion", "zsh")
        (zsh_completion/"_subo").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"subo", "completion", "fish")
        (fish_completion/"subo.fish").write fish_output
      end
    end
  end

  test do
    assert_match "Subo CLI v#{version}", shell_output("#{bin}/subo --version")
  end
end

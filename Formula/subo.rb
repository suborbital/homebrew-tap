# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Subo < Formula
  desc "Suborbital CLI for building and deploying WebAssembly-based projects"
  homepage "https://suborbital.dev"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/suborbital/subo/releases/download/v0.5.0/subo-v0.5.0-darwin-arm64.tar.gz"
      sha256 "0a87dbf0f2e582b9dca451e59fc3f6673b7af407589866aba872f2cac118fedc"

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
      url "https://github.com/suborbital/subo/releases/download/v0.5.0/subo-v0.5.0-darwin-amd64.tar.gz"
      sha256 "9f131bd2e9145d239794b34e0f09dc87d09157d5975f7896a7705b86be35d75a"

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
    if Hardware::CPU.intel?
      url "https://github.com/suborbital/subo/releases/download/v0.5.0/subo-v0.5.0-linux-amd64.tar.gz"
      sha256 "294f6fd4ca2635e3ede3c08422f96534437126780f21922a328f9e2a54ca6bd3"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/suborbital/subo/releases/download/v0.5.0/subo-v0.5.0-linux-arm64.tar.gz"
      sha256 "72d2746eaf38b7a62d0aa8801dd7d209cea1a7f93feb004598e1554b34df98eb"

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

# filepath: Formula/dtj.rb
# typed: true
# frozen_string_literal: true

class Dtj < Formula
  desc "Data transfer job runner — dtj + dtj-agent"
  homepage "https://github.com/Papa2Carlro/dtj"
  version "0.1.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Papa2Carlro/dtj/releases/download/v0.1.1/dtj-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "15f9bb7d81f130e841cf1d151b4a3f37ddaec94fce9fec7ed7a1482f3bd67451"
    end

    on_intel do
      url "https://github.com/Papa2Carlro/dtj/releases/download/v0.1.1/dtj-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "5fa1bf67b4238eb04a63ee86de1298a9679a52391c659d1f6b64fbf07d4aa69a"
    end
  end

  def install
    bin.install "dtj"
    bin.install "dtj-agent"
  end

  test do
    assert_match "dtj 0.1.1", shell_output("#{bin}/dtj --version")
    assert_match "dtj-agent 0.1.1", shell_output("#{bin}/dtj-agent --version")
  end
end

# typed: true
# frozen_string_literal: true

class DongInbox < Formula
  desc "inBox 笔记命令行工具"
  homepage "https://github.com/dong-labs/inbox-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dong-labs/inbox-cli/releases/download/v#{version}/dong-inbox-arm64.tar.gz"
      sha256 "68349ad2379ddcc15be77b6b90c7a8a6b9d1e0e5a3c5f8d9e1b2c3d4e5f6a7b8c"
    else
      url "https://github.com/dong-labs/inbox-cli/releases/download/v#{version}/dong-inbox-x64.tar.gz"
      sha256 :no_check
    end
  end

  version "1.0.1"

  def install
    bin.install "dong-inbox" => "inbox"
  end

  test do
    system "#{bin}/inbox", "--version"
  end
end

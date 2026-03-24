# typed: true
# frozen_string_literal: true

class DongInbox < Formula
  desc "inBox 笔记命令行工具"
  homepage "https://github.com/dong-labs/inbox-cli"
  version "1.0.0"
  url "https://github.com/dong-labs/inbox-cli/archive/refs/tags/v#{version}.tar.gz"
  sha256 :no_check

  def install
    system "flutter", "pub", "get"
    system "dart", "compile", "exe", "bin/inbox.dart", "-o", "dong-inbox"
    bin.install "dong-inbox" => "inbox"
  end

  test do
    system "#{bin}/inbox", "--version"
  end
end

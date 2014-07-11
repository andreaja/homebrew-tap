# https://github.com/nerdrew/homebrew-tap/blob/3297028bf1d6dd6b283a896475d846b102227109/cargo.rb

require "formula"

class Cargo < Formula
  homepage "https://github.com/rust-lang/cargo"
  head "https://github.com/rust-lang/cargo.git"

  depends_on 'rust-nightly'

  def install
    args = ["PREFIX=#{prefix}"]
    system "make", *args
    system "make", "install", *args
  end

  test do
    system "#{bin}/cargo"
  end
end

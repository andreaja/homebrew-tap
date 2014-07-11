# https://github.com/nerdrew/homebrew-tap/blob/3297028bf1d6dd6b283a896475d846b102227109/rust-nightly.rb

require 'formula'
require 'date'

class RustNightly < Formula
  homepage 'http://www.rust-lang.org/'
  url 'http://static.rust-lang.org/dist/rust-nightly-x86_64-apple-darwin.tar.gz'
  version Date.today.to_s

  conflicts_with 'rust', :because => 'same'

  def install
    args = ["--prefix=#{prefix}"]
    system "./install.sh", *args
  end

  test do
    system "#{bin}/rustc"
    system "#{bin}/rustdoc", "-h"
  end
end

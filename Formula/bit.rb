# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "custom_download_strategy"
class Bit < Formula
  desc "A modern git CLI"
  homepage "https://github.com/chriswalz/bit"
  version "0.6.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chriswalz/bit/releases/v0.6.6/bit_0.6.6_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy.
    sha256 "908b98aafbc258b6bb0a9d5151af2c748e7ab7e4418340e9c025d51fa01c0073"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chriswalz/bit/releases/v0.6.6/bit_0.6.6_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy.
      sha256 "dcdd97a104ac65290a64300044949cac7ee646d7a0bd257d7a9a6c6d12a00361"
    end
  end

  def install
    bin.install "bit"
  end

  test do
    system "#{bin}/program --version"
    ...
  end
end

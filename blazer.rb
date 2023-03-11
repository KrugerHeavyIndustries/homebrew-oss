class Blazer < Formula
  desc "Backblaze B2 command line client"
  homepage "https://github.com/KrugerHeavyIndustries/blazer"
  url "https://github.com/KrugerHeavyIndustries/blazer/archive/0.4.5.tar.gz"
  version "0.4.5"
  sha256 "6009bed5c43609f9f5f9a284c98d66d090e8315167a5b25e3d8d6f0006bb301c"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on 'restclient-cpp'
  depends_on 'openssl'
  depends_on 'jansson'

  def install
    system "autoreconf", "--install", "--force"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end

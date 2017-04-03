class Blazer < Formula
  desc "Backblaze B2 command line client"
  homepage "https://github.com/KrugerHeavyIndustries/blazer"
  url "https://github.com/KrugerHeavyIndustries/blazer/archive/0.3.7.tar.gz"
  version "0.3.7"
  sha256 "80235f4d58256ee82561daa3cf0ef7e8c69de05d5efd0f2ac96851cf567081e2"

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

class Chimera < Formula
  desc "Utility to generate Boost.Python bindings for C++ code"
  homepage "https://github.com/personalrobotics/chimera"
  url "https://github.com/personalrobotics/chimera/archive/93e026db845a067e191615b3aa5b30aa700b2853.tar.gz"
  version "0.0.1-prerelease2"
  sha256 "a864a062c22749529b5ceaddf7791020edbca7c08ca8343751ea8d44390929b8"
  head "https://github.com/personalrobotics/chimera", :branch => "master"

  depends_on "cmake" => :build
  depends_on "boost-python" => :build # for building tests

  depends_on "boost"
  depends_on "llvm"
  depends_on "yaml-cpp" => "with-static-lib"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "true"
  end
end

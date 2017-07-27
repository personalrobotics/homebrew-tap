class Chimera < Formula
  desc "Utility to generate Boost.Python bindings for C++ code"
  homepage "https://github.com/personalrobotics/chimera"
  url "https://github.com/personalrobotics/chimera/archive/d1c74c2e17a102950042511f035360a1a4775322.tar.gz"
  version "0.0.1-prerelease3"
  sha256 "cbb36eadefd77c4560b5cebf496ac0d48c1c0ca57b22faaee4dda658e70221c0"
  head "https://github.com/personalrobotics/chimera", :branch => "master"

  depends_on "cmake" => :build
  depends_on "boost-python" => :build # for building tests

  depends_on "boost"
  depends_on "llvm"
  depends_on "yaml-cpp"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "true"
  end
end

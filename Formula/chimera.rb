class Chimera < Formula
  desc "Utility to generate Boost.Python bindings for C++ code"
  homepage "https://github.com/personalrobotics/chimera"
  url "https://github.com/personalrobotics/chimera/archive/c632e88c621028cf0a73b3b5babea45038bd030e.tar.gz"
  version "0.0.1-prerelease"
  sha256 "bc3ff5736a2c9e3b3cb318b0d4d89ede4390b70c7ec321ff88872eda7e126dfa"
  head "https://github.com/personalrobotics/chimera", :branch => "master"

  depends_on "cmake" => :build

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

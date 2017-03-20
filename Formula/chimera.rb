class Chimera < Formula
  desc "Utility to generate Boost.Python bindings for C++ code"
  homepage "https://github.com/personalrobotics/chimera"
  url "https://github.com/personalrobotics/chimera/archive/4199c955c2145e83ccb622f07562c68d231091be.tar.gz"
  version "0.0.1-prerelease"
  sha256 "9cb6358b5dd50a3c9fe0e1b7f4e468260c12844b74f1878a95e0e1e9c54200c0"

  depends_on "cmake" => :build

  depends_on "boost"
  depends_on "llvm"
  depends_on "yaml-cpp" => "with-static-lib"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end

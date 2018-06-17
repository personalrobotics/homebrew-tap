class Chimera < Formula
  desc "Utility to generate Boost.Python bindings for C++ code"
  homepage "https://github.com/personalrobotics/chimera"
  url "https://github.com/personalrobotics/chimera/archive/v0.0.4.tar.gz"
  sha256 "27c6fd2d7d2d0165ffc45bde387bd64fe28ea7b6d900023d72936645b5635ecd"

  depends_on "cmake" => :build
  depends_on "boost-python3" => :build # for building tests

  depends_on "boost"
  depends_on "llvm@5"
  depends_on "yaml-cpp"

  def install
    system "cmake", ".", "-DBUILD_TESTING=OFF", *std_cmake_args
    system "make", "install"
  end

  test do
    system "true"
  end
end

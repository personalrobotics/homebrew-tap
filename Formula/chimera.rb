class Chimera < Formula
  desc "Utility to generate Boost.Python bindings for C++ code"
  homepage "https://github.com/personalrobotics/chimera"
  url "https://github.com/personalrobotics/chimera/archive/v0.0.3.tar.gz"
  sha256 "69fd5c514a2e58e0eceed88bd36096bd542b538658793b1af755ac89365c7b0c"

  depends_on "cmake" => :build
  depends_on "boost-python3" => :build # for building tests

  depends_on "boost"
  depends_on "llvm@5"
  depends_on "yaml-cpp"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "true"
  end
end

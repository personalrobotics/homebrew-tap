class Chimera < Formula
  desc "Utility to generate Boost.Python bindings for C++ code"
  homepage "https://github.com/personalrobotics/chimera"
  url "https://github.com/personalrobotics/chimera/archive/v0.0.5.tar.gz"
  sha256 "71e2638302b0bf20a67c7f8cef150fae8cc20415a60ab855518ebeb1ef30cc63"

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

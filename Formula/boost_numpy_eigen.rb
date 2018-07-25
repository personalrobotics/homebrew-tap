class BoostNumpyEigen < Formula
  desc "Boost.Python bindings for converting between NumPy and Eigen"
  homepage "https://github.com/personalrobotics/boost_numpy_eigen/"
  url "https://github.com/personalrobotics/boost_numpy_eigen/archive/v0.0.5.tar.gz"
  sha256 "affe9eb0647e63b2ab8e208e03f78d62bd9d8e0d34620761d464eb03dbe45c06"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "boost"
  depends_on "boost-python3"
  depends_on "eigen"
  depends_on "numpy"

  needs :cxx11

  def install
    ENV.cxx11
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system python, "-c", "import boost_numpy_eigen"
  end
end

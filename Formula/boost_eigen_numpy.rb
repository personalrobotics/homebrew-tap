class BoostEigenNumpy < Formula
  desc "Boost.Python bindings that convert between NumPy and Eigen"
  homepage "https://github.com/personalrobotics/boost_numpy_eigen/"
  url "https://github.com/personalrobotics/boost_numpy_eigen/archive/v0.0.5.tar.gz"
  sha256 "121420dfdf1ba884903ac3733c7c02639955c901c2074e6a5c677c67944d5475"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
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
    system python, "-c", "import boost_eigen_numpy"
  end
end

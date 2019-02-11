class BoostNumpyEigen < Formula
  desc "Boost.Python bindings for converting between NumPy and Eigen"
  homepage "https://github.com/personalrobotics/boost_numpy_eigen/"
  url "https://github.com/personalrobotics/boost_numpy_eigen/archive/v0.1.0.tar.gz"
  sha256 "77bf05e51c44beea9c991abf1f24cce9490f06793cbf4c4d6524b87c716648d3"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "boost"
  depends_on "boost-python3"
  depends_on "eigen"
  depends_on "numpy"

  def install
    ENV.cxx11
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "python", "-c", "import boost_numpy_eigen"
  end
end

class Aikido < Formula
  desc "Artificial Intelligence for Kinematics, Dynamics, and Optimization"
  homepage "https://github.com/personalrobotics/aikido/"
  url "https://github.com/personalrobotics/aikido/archive/v0.2.0.tar.gz"
  sha256 "b196acd55feebbb9456c996a56fa268ab795959de27cbbdcc5ec4bea5c3bf969"

  depends_on "cmake" => :build
  depends_on "doxygen" => :build
  depends_on "pkg-config" => :build
  depends_on "boost"
  depends_on "dartsim"
  depends_on "libmicrohttpd"
  depends_on "ompl"
  depends_on "tinyxml2"
  depends_on "yaml-cpp"

  def install
    ENV.cxx11
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "true"
  end
end

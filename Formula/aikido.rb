class Aikido < Formula
  desc "Artificial Intelligence for Kinematics, Dynamics, and Optimization"
  homepage "https://github.com/personalrobotics/aikido/"
  url "https://github.com/personalrobotics/aikido/archive/v0.2.0.tar.gz"
  sha256 "bcd6a1386317c240df306d42b24661dbbcdaebc3d4b87e68c687c6336d0e0d19"
  head "https://github.com/personalrobotics/aikido.git"

  option "without-common"
  option "without-statespace"
  option "without-constraint"
  option "without-distance"
  option "without-perception"
  option "without-trajectory"
  option "without-planner"
  option "without-planner-ompl"
  option "without-control"
  option "without-io"
  option "without-rviz"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "doxygen" => :build

  depends_on "boost"
  depends_on "dartsim/dart/dartsim6"

  depends_on "ompl" if build.with? "planner-ompl"
  depends_on "tinyxml2" if build.with? "io"
  depends_on "yaml-cpp" if build.with? "io"
  depends_on "libmicrohttpd" if build.with? "rviz"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "true"
  end
end

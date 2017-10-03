class Aikido < Formula
  desc "Artificial Intelligence for Kinematics, Dynamics, and Optimization"
  homepage "https://github.com/personalrobotics/aikido/"
  url "https://github.com/personalrobotics/aikido/archive/v0.1.0.tar.gz"
  sha256 "8260072991f184cdfa029d7875d60dc78b252737f7f7087fc0bfb63fad6f6815"
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

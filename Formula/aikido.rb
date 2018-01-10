class Aikido < Formula
  desc "Artificial Intelligence for Kinematics, Dynamics, and Optimization"
  homepage "https://github.com/personalrobotics/aikido/"
  url "https://github.com/personalrobotics/aikido/archive/v0.2.0.tar.gz"
  sha256 "b196acd55feebbb9456c996a56fa268ab795959de27cbbdcc5ec4bea5c3bf969"
  head "https://github.com/personalrobotics/aikido.git", :branch => "release-0.2"

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

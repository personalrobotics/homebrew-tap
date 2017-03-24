class Aikido0 < Formula
  desc "Artificial Intelligence for Kinematics, Dynamics, and Optimization"
  homepage "https://github.com/personalrobotics/aikido/"
  url "https://github.com/personalrobotics/aikido/archive/v0.0.1.tar.gz"
  sha256 "1693978ed7b72686fefbe396e993826946dc40c03e6a2f11dbe1c5829a69c3d1"
  head "https://github.com/personalrobotics/aikido.git"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build

  depends_on "boost"
  depends_on "dartsim/dart/dartsim6"

  depends_on "ompl" => [:recommended, "with-eigen"]
  depends_on "tinyxml2" => :recommended

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end

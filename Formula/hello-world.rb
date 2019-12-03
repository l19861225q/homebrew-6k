class HelloWorld < Formula
  desc "hello world demo"
  url "https://github.com/l19861225q/homebrew-6k", :using => :git

  # depends_on "cmake" => :build

  def install
    system "g++", "./hello-world.cpp", "-o", "hello-world"
    bin.install "hello-world"
    # mkdir "build" do
    #   system "cmake", ".."
    #   system "make"
    # end
    # bin.install hello-world
  end
end
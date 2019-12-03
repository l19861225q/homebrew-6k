class HelloWorld < Formula
  desc "hello world demo"
  url "https://github.com/l19861225q/homebrew-6k", :using => :git

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", ".."
      system "make"
    end
    bin.install hello-world
  end
end
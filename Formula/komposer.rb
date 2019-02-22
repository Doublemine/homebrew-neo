# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Komposer < Formula
    desc "A command tool for mix kubernetes auth config file up."
    homepage "https://notes.doublemine.me"
    url "https://github.com/Doublemine/homebrew-neo/releases/download/1.0/komposer-osx-v1.0.zip"
    version "1.0"
    sha256 "6a368780ae256ab2b45fbb45faaab97824b1789082ead6318112a30a9ca9d00b"
  
    # depends_on "cmake" => :build
  
    def install
      bin.install "komposer"  
    end
  
    test do
      # `test do` will create, run in and delete a temporary directory.
      #
      # This test will fail and we won't accept that! For Homebrew/homebrew-core
      # this will need to be a test that verifies the functionality of the
      # software. Run the test with `brew test v2ray-core`. Options passed
      # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
      #
      # The installed folder is not in the path, so use the entire path to any
      # executables being tested: `system "#{bin}/program", "do", "something"`.
      system "#{bin}/komposer", "-v"
    end
  end
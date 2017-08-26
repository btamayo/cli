# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Ansibuddy < Formula
  desc "Ansibuddy: Ansible-playbook helper"
  homepage "https://github.com/btamayo/ansibuddy"
  url "https://github.com/btamayo/ansibuddy/archive/0.1.0-beta.1.tar.gz"
  sha256 "39616f1df888a8b6d6bdb4730507f966cf5bbfcd9f2cc9eb05d6c02f7e3e728b"
  head "https://github.com/btamayo/ansibuddy.git", :branch => "development"

  def install
    opoo "WARNING: This package is still unstable and in active development"
    bin.install_symlink "ap.sh"
    mv bin/"ap.sh", bin/"ap"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ansibuddy`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

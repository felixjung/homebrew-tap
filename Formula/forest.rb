class Forest < Formula
  desc "Manage git worktrees for configured projects"
  homepage "https://github.com/felixjung/forest"
  url "https://github.com/felixjung/forest/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "REPLACE_ME"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/forest"
  end

  test do
    assert_match "Manage git worktrees", shell_output("#{bin}/forest --help")
  end
end

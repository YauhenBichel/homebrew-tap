class LlmHops < Formula
  desc "See every hop of a request through a local LLM system"
  homepage "https://github.com/YauhenBichel/llm-hops"
  url "https://github.com/YauhenBichel/llm-hops/archive/refs/tags/v0.2.4.tar.gz"
  sha256 "c27baaa0e1d8d74d0cb043df575915ebd1acfb08672514f971f6ff4d55d9a68c"
  license "Apache-2.0"
  head "https://github.com/YauhenBichel/llm-hops.git", branch: "main"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/llm-hops"
  end

  test do
    assert_match "llm-hops #{version}", shell_output("#{bin}/llm-hops --version")
    assert_match "listen", shell_output("#{bin}/llm-hops config")
  end
end

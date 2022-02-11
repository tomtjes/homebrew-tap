class Waveform < Formula
  desc "Uploads transactions from a csv file to a waveapps.com account"
  homepage "https://github.com/tomtjes/waveform"
  url "https://github.com/tomtjes/waveform/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "be62339d49cffb0b3d4bc3158348f94500f3bdb0a1df2e7a57d13b70f142f58b"
  license "MIT"

  depends_on "python@3.9"

  def install
    bin.install "waveform.py" => "waveform"
  end

end

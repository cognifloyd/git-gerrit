require 'formula'

class GitGerrit < Formula
  url 'https://github.com/cognifloyd/git-gerrit/tarball/v0.5.0'
  homepage 'https://github.com/cognifloyd/git-gerrit'
  md5 '1d722ddb607536504ffd84957c536401'

  def install
    # install scripts in bin.
    bin.install Dir['bin/*']

    # install bash completions.
    (prefix + 'etc/bash_completion.d').install 'completion/git-gerrit-completion.bash'

  end

end

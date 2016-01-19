export PATH=$PATH:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin:/Applications/plink:/Users/ys/bin/gsl-1.16:/Users/ys/bin:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/Users/ys/Library/Enthought/Canopy_64bit/User/bin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin:/Applications/plink:/Users/ys/bin/gsl-1.16:/Users/ys/bin:/Users/ys/bin/boost_1_59_0:/Users/ys/bin/boost_1_59_0/bin:/Users/ys/bin/boost_1_59_0:/Users/ys/bin/boost_1_59_0/bin.v2:/Users/ys/bin/boost_1_59_0:/Users/ys/bin/boost_1_59_0/bin.v2i:/Users/ys/bin/simlinks:/Users/ys/bin/go/bin

export CC=/usr/local/bin/gcc-4.2

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github

complete -C aws_completer aws
source /Users/ys/bin/github/z/z.sh

eval "$(thefuck --alias)"

# loading aliases from msu
[ -f "/Users/ys/lib/msu/aliases.sh" ] && . "/Users/ys/lib/msu/aliases.sh"

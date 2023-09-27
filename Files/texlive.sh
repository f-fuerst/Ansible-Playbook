# /etc/profile.d/texlive.sh

TeX_dir="/usr/local/texlive/2023"

if [[ $UID != 0 && -d $TeX_dir/bin/x86_64-linux ]]; then
  case ":$PATH:" in
    *":$TeX_dir/bin/x86_64-linux:"*) :;;                 # already there
    *) PATH="${PATH:+$PATH:}$TeX_dir/bin/x86_64-linux";; # add it
  esac
fi

unset TeX_dir


function safe_link() {
  src="$1"
  dst="$2"
  if [[ -L $dst ]]; then
    echo "File ${dst} exists and is a symbolic link, aborting"
    return
  fi
  if [[ -f $dst ]]; then
    echo "File ${dst} exists, backing it up"
    mv $dst $dst.bkp
  fi
  ln -s $src $dst
}

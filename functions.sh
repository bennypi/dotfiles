# FUNCTIONS
function gcp {
  git commit -am "$1" && git push
}

function cdl {
  cd $1;ll
}
# special PWD output, with only the last three directories
function PWD {
tmp=${PWD%/*/*/*};
[ ${#tmp} -gt 0 -a "$tmp" != "$PWD" ] && echo ${PWD:${#tmp}+1} || echo $PWD;
}

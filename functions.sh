# FUNCTIONS
function gcp {
  git commit -am "$1" && git push
}

function cdl {
  cd $1;ll
}

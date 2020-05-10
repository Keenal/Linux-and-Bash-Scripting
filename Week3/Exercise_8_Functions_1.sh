function plier {
  local mul=1

  for element in $@
  do
    let mul=mul\*$element
  done

  echo $sum
}

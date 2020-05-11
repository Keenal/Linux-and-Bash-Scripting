var1=$(ls | wc -l)

echo "Enter your guess for the number of files I have:"
read input

while ! [[ "$input" =~ ^[0-9]+$ ]] ; 
 do 
  echo "Not a valid number, try again!"
  read input
done

function guess {

  while [[ $input -ne $var1 ]]
  do
    if [[ $input -lt $var1 ]]
    then 
      echo "Too low. Try again!"
      read input
      while ! [[ "$input" =~ ^[0-9]+$ ]] ; 
      do 
        echo "Not a valid number, try again!"
        read input
      done
    else
      echo "Too high. Try again!"
      read input
      while ! [[ "$input" =~ ^[0-9]+$ ]] ; 
      do 
        echo "Not a valid number, try again!"
        read input
      done
    fi
  done

  if [[ $input -eq $var1 ]]
  then
    echo "Congrats! You guessed it right!"
  fi
}

guess





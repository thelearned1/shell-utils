i=0
for var in $@
do 
  ((i++))
  if [[ -d $var ]]; then
    echo "mcd: directory $var already exists" 
    break
  else 
    mkdir $var 
    if [[ i -eq $# ]]; then
      cd $var
    fi 
  fi 
done 


name=scratch
 
if [[ -e $name.hpp ]] ; then
    i=$((1 + RANDOM % 999))
    while [[ -e $name-$i.hpp ]] ; do
        let i++
    done
  name=$name-$i
fi
vim ~/scratch/"$name".hpp

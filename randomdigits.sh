count=0;

for (( i=0; i<10; i++ ))
do
  num[ count++ ]=$(( RANDOM%9 ))
done

echo ${num[@]}

max=${num[0]}
min=${num[0]}

for (( i=0; i<10; i++ ))
do
  if [ ${num[i]} > $max ]
  then
    max=${num[i]}
  fi

  if [ ${num[i]} < $min ]
  then
    min=${num[i]}
  fi

done

echo "maximum value "$max
echo "minimum value "$min


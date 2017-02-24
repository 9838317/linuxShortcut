#!/bin/bash 
#pipe runs concurrently. So if you want to run the command sequentially, use ";"

nameA=${1};
nameB=${2};
nameC=${3};

total=$nameA;

if [ -z "${var+nameB}" ]; then
total="$nameA $nameB";
fi

if [ "$nameA" == "c" ]
then
  total="createsuperuser"
fi

if [ "$nameA" == "m" ]
then
  total="migrate"
fi

if [ "$nameA" == "r" ]
then
  total="runserver"
fi

if [ "$nameA" == "dm" ]
then
  total="db migrate"
fi

if [ "$nameA" == "du" ]
then
  total="db upgrade"
fi

echo $total

python manage.py $total;
 








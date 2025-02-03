echo "Would you like to make the presentation (p), abstract (a), or both (b)?"
read -p "(p/a/b): " build
echo "Ok, I will build that right away!"

if [ $build == p ]
then
    (cd presentation && make all-via-pdf)
fi

if [ $build == a ]
then
    (cd abstract && make all-via-pdf)
fi

if [ $build == b ]
then
    (cd presentation && make all-via-pdf)
    (cd abstract && make all-via-pdf)
fi
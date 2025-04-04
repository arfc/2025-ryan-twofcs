echo "Would you like to make the slides (s), abstract (a), paper (p), or everything (e)?"
read -p "(s/a/p/e): " build
echo "Ok, I will build that right away!"

if [ $build == s ]
then
    (cd presentation && make all-via-pdf)
fi

if [ $build == a ]
then
    (cd abstract && make all-via-pdf)
fi

if [ $build == p ]
then
    (cd paper/doc/ && make all)
fi

if [ $build == e ]
then
    (cd presentation && make all-via-pdf)
    (cd abstract && make all-via-pdf)
    (cd paper/doc/ && make all)
fi
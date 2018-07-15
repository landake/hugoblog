echo $#
if [ $# == 1 ] ; then
docker run  -p 1313:1313 -e HUGO_BASE_URL=$1 myblog
else
docker run -p 1313:1313 myblog
fi
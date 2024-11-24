if [[ $# -eq 0 ]]; then 
  echo "mkhw: no argument supplied"
  exit 1
fi


CLASSNAME="${PWD##*/}"
FILENAME="watson-${CLASSNAME}-hw$1.tex"
TEMPLATE="${CLASSNAME}-template.tex"

if [[ $# > 2 ]]; then
  echo "mkhw: too many arguments"
  exit 2
fi 

if [ $# -eq 2 ]; then
  FILENAME=$2 
fi

if [[ -e ${FILENAME} ]]; then
  echo "mkhw: file ${FILENAME} already exists"
  exit 3
fi 

DIRNAME="hw$1"

if [[ ! -d ${DIRNAME} ]]; then
  mkdir ${DIRNAME}
fi 

cp ${TEMPLATE} "${DIRNAME}/${FILENAME}"

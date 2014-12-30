cd "${SRC_BASE}/ptlib"

OSTYPE=`make/ptlib-config --ostype`
MACHTYPE=`make/ptlib-config --machtype`

if [ "`uname`" == "Linux" ]; then
	cp -vf --no-dereference lib_${OSTYPE}_${MACHTYPE}/libpt* ${HOME}/lib
else
	cp -vfR lib_${OSTYPE}_${MACHTYPE}/libpt* ${HOME}/lib
fi

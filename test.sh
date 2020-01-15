#test installation
IMAGE_FILE=MRtrix3Tissue.simg

echo -n "testing MRtrix3Tissue install:mrinfo"
singularity exec $IMAGE_FILE  mrinfo &>/dev/null
if [ $? -eq 0 ]; then
    echo ' SUCCESS'
else
    echo ' FAIL'
fi


echo -n "testing MRtrix3Tissue install:mrview"
singularity exec $IMAGE_FILE  mrview &>/dev/null
if [ $? -eq 0 ]; then
    echo ' SUCCESS'
else
    echo ' FAIL'
fi


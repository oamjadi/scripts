
#Read the contents from the file into this variable.
INPUT=$(<220214_filesToCopyFromMLServer.txt) 

#This variable could be deleted.
STRING_INPUT=($INPUT)

#Generating an array 
IFS=' ' read -a STRING_INPUT <<< "$INPUT"
for s in "${STRING_INPUT[@]}"; do
    echo "$s"
    scp "ubuntu@ec2-3-140-184-211.us-east-2.compute.amazonaws.com:~/workspace/VolumetricCargoSensor/$s" "/Users/oamjadi/projects/scpServerTest"
done


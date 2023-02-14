#$1 is the server, $2 is the directory on the server, $3 is the destination directory on the local computer
#Read the contents from the file into this variable.
INPUT=$(<220214_filesToCopyFromMLServer.txt) 

#Generating an array, IFS in the String splitter. 
IFS=' ' read -a STRING_INPUT <<< "$INPUT"

#For each fileName run the scp command
for fileName in "${STRING_INPUT[@]}"; do
    printf "Copying $fileName from the server to local directory $3"
    printf "\n"
    scp "$1:$2/$fileName" "$3"
done


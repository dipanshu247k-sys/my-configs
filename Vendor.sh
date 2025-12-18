FILE_ID="1z1w4i-cBA3WtZ-1z9O2-H8GZqf_Js0yj"
FILE_NAME="downloaded_file.bin"

curl -c cookies.txt -s -L "https://drive.google.com/uc?export=download&id=${FILE_ID}" > /dev/null

CONFIRM=$(awk '/download/ {print $NF}' cookies.txt)

curl -Lb cookies.txt \
  "https://drive.google.com/uc?export=download&confirm=${CONFIRM}&id=${FILE_ID}" \
  -o "${FILE_NAME}"

rm -f cookies.txt

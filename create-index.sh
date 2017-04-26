#!/bin/sh

OUTPUT_FILE="problem-index.md"

if [ -e $OUTPUT_FILE ]; then
  $(rm $OUTPUT_FILE)
fi

echo "# Problem Index\n" >> $OUTPUT_FILE

for item in $(ls | grep problem); do
  FILE="$item/README.md"
  if [ -e $FILE ]; then
    TITLE="- $item $(head -n1 $FILE | tr "#" " ")"
    echo $TITLE >> $OUTPUT_FILE
  fi
done

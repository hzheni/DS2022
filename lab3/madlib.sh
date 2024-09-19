#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Give a name: " NOUN1
read -p "2. Give a name: " NOUN2
read -p "3. Name an animal: " NOUN3
read -p "4. Name a place: " NOUN4
read -p "5. Name an activity: " VERB1
read -p "6. Name an exercise: " VERB2
read -p "7. Name an adjective: " ADJECTIVE1
read -p "8. Name an adjective: " ADJECTIVE2
read -p "9. Give a time frame (ex. 10 minutes): " ADVERB1

echo "Once upon a time a $ADJECTIVE1 $NOUN1 and a $ADJECTIVE2 $NOUN2 were best friends.
They loved to $VERB1 and $VERB2 together. They adopted a new friend, a $NOUN3 , and they $VERB1 for $ADVERB1 every day. At the end, $NOUN1, $NOUN2, and their $NOUN3 lived happily ever after at $NOUN4 ."

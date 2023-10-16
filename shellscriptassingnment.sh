#!/bin/bash -x

# Display a message for each word
echo "enter the Component Name"
read COMPONENT
COMPONENT=${COMPONENT^^}

echo "enter the Scale"
read SCALE
SCALE=${SCALE^^}

echo "enter the View"
read VIEW
VIEW=${VIEW^^}

echo "enter no of Count"
read COUNT

#Validate the given input and make an entry.

if [[ "$COMPONENT" =  @("INGESTOR"|"JOINER"|"WRANGLER"|"VALIDATOR") ]] && [[ "$SCALE" = @("MID"|"HIGH"|"LOW") ]] && 
[[ "$VIEW" = @("AUCTION"|"BID") ]] &&  [[ "$COUNT" =~ ^[0-9] ]]
then
   echo "$VIEW ; $SCALE ; $COMPONENT ; ETL ; vdopia-etl= $COUNT" >  /home/sigmoid/Desktop/sig.conf
else
 echo "Enter valid entries"
fi

#!/bin/bash

ENGINE="$1"
shift
QUERY="$*"

ENCODED_QUERY=$(echo "$QUERY" | sed 's/ /+/g')

case "$ENGINE" in
yt)
  xdg-open "https://www.youtube.com/results?search_query=$ENCODED_QUERY"
  ;;
wikipedia)
  xdg-open "https://en.wikipedia.org/wiki/Special:Search?search=$ENCODED_QUERY"
  ;;
searchxng)
  xdg-open "https://findit.yerp.lat?q=$ENCODED_QUERY"
  ;;
*)
  QUERY="$ENGINE $QUERY"
  ENCODED_QUERY=$(echo "$QUERY" | sed 's/ /+/g')
  xdg-open "https://www.google.com/search?q=$ENCODED_QUERY"
  ;;
esac

#!/bin/bash

#Getting the current operatingsystem
OPERATING_SYS=""
case "$OSTYPE" in
  linux*)   OPERATING_SYS="Linux" ;;
  darwin*)  OPERATING_SYS="Mac OS" ;; 
  win*)     OPERATING_SYS="Windows" ;;
  *)        echo "unknown: $OSTYPE" ;;
esac

SEARCH_QUERY=$1



#GOOGLE SEARCH 
GOOGLE_SEARCH="http://www.google.com/search?q=$SEARCH_QUERY"

#STACK OVERFLOW SEARCH:
STACKOVERFLOW_SEARCH="https://stackoverflow.com/search?q=$SEARCH_QUERY"

#MEDIUM SEARCH
MEDIUM_SEARCH="https://medium.com/search?q=$SEARCH_QUERY"

#REDDIT SEARCH
REDDIT_SEARCH="https://www.reddit.com/r/programming/search?q=$SEARCH_QUERY"

#YOUTUBE SEARCH
YOUTUBE_SEARCH="https://www.youtube.com/results?search_query=$SEARCH_QUERY"

#BING SAEARCH
BING_SAEARCH="https://www.bing.com/search?q=$SEARCH_QUERY"

#WIKIPEDIA_SEARCH
WIKIPEDIA_SEARCH="https://en.wikipedia.org/w/index.php?search=$SEARCH_QUERY"

#Mac OS
if [[ $OPERATING_SYS == "Mac OS" ]]; then
	open "$GOOGLE_SEARCH" "$STACKOVERFLOW_SEARCH" "$MEDIUM_SEARCH" "$REDDIT_SEARCH" "$BING_SAEARCH" "$WIKIPEDIA_SEARCH"
fi

#Linux OS
if [[ $OPERATING_SYS == "Linux" ]]; then
	python -m webbrowser -t "$GOOGLE_SEARCH"
	python -m webbrowser -t "$STACKOVERFLOW_SEARCH"
	python -m webbrowser -t "$MEDIUM_SEARCH"
	python -m webbrowser -t "$REDDIT_SEARCH"
	python -m webbrowser -t "$BING_SAEARCH"
	python -m webbrowser -t "$WIKIPEDIA_SEARCH"
	  
fi

#Windows OS
if [[ $OPERATING_SYS == "Windows" ]]; then
	start "$GOOGLE_SEARCH" "$STACKOVERFLOW_SEARCH" "$MEDIUM_SEARCH" "$REDDIT_SEARCH" "$BING_SAEARCH" "$WIKIPEDIA_SEARCH"
fi

#!/bin/bash

for i in lyrics/*.txt;
do python3 tokenize_lyrics.py $i >> all_tokens.txt;
done
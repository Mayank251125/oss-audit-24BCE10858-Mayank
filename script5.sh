#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Mayank Joshi

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "" > $OUTPUT

echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL as part of my daily workflow, and it represents the idea of $FREEDOM in software." >> $OUTPUT
echo "I believe knowledge should be shared openly, and I would contribute by building $BUILD for the community." >> $OUTPUT
echo "Open source empowers individuals and creates a collaborative future." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""

cat $OUTPUT

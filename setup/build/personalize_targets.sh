#!/bin/bash
cd ~/targets
echo "Each person’s targets will be different. We are about to personalize your targets.
Make sure your PennKey is correct, since we will use this same PennKey for grading. Your
PennKey IS NOT the number on the back of your id It is the prefix of your email address
(e.g., johndoe@upenn.edu has PennKey johndoe).
Please enter your pennkey: "
read pennkey
./personalize $pennkey
sudo make
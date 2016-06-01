#!/bin/sh
./run @mode=simple -Grammar.inPaths data/george.grammar -Dataset.inPaths train:data/$1.examples -Learner.maxTrainIters 0 -SimpleLexicon.inPaths data/taxes.lexicon -typeInference -valueEvaluator ApproximateStringValueEvaluator # | (python3 clean.py)

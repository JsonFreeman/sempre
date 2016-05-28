#!/bin/sh
./run @mode=simple -Grammar.inPaths data/new.grammar -Dataset.inPaths train:data/unlabeled.examples -Learner.maxTrainIters 0 -SimpleLexicon.inPaths data/taxes.lexicon -typeInference -valueEvaluator ApproximateStringValueEvaluator | (python3 clean.py)

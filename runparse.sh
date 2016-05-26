#!/bin/sh
./run @mode=simple -Grammar.inPaths data/taxes.grammar -Dataset.inPaths train:data/unlabeled.examples -Learner.maxTrainIters 0 -SimpleLexicon.inPaths data/taxes.lexicon -typeInference -valueEvaluator ApproximateStringValueEvaluator | (python3 cleanup.py)

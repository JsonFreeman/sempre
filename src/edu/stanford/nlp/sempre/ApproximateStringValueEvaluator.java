package edu.stanford.nlp.sempre;

// This is the simplest evaluator, but exact match can sometimes be too harsh.
public class ApproximateStringValueEvaluator extends ExactValueEvaluator {
  public double getCompatibility(Value target, Value pred) {
  	if (target instanceof StringValue && pred instanceof StringValue) {
  		StringValue p = (StringValue) pred, t = (StringValue) target;
  		return p.value.toLowerCase().replaceAll("\\s+|~~", "")
      		.equals(t.value.toLowerCase().replaceAll("\\s+|~~", "")) ? 1 : 0;
  	}

    return super.getCompatibility(target, pred);
  }
}

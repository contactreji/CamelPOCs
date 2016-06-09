package com.custom.aggregators;

import org.apache.camel.Exchange;
import org.apache.camel.processor.aggregate.AggregationStrategy;

public class MyAggregator implements AggregationStrategy {

	@Override
	public Exchange aggregate(Exchange oldExchange, Exchange newExchange) {
		// TODO Auto-generated method stub
		if (oldExchange == null) {
			String firstExchangeString = newExchange.getIn().getBody(String.class).replace("<Output>", "")
					.replace("</Output>", "");
			newExchange.getIn().setBody(firstExchangeString);
			return newExchange;
		}
		String newCombination = oldExchange.getIn().getBody(String.class).replace("<Output>", "").replace("</Output>",
				"") + newExchange.getIn().getBody(String.class).replace("<Output>", "").replace("</Output>", "");

		oldExchange.getIn().setBody(newCombination);
		return oldExchange;
	}

}

// 5 seconds = Only 1 message came
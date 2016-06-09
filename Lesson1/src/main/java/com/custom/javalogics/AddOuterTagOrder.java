package com.custom.javalogics;

import org.apache.camel.Exchange;
import org.apache.camel.Processor;

public class AddOuterTagOrder implements Processor {

	@Override
	public void process(Exchange exchange) throws Exception {
		// TODO Auto-generated method stub
		String incomingXML = "<ApprovedOrders>" + exchange.getIn().getBody(String.class) + "</ApprovedOrders>";
		exchange.getIn().setBody(incomingXML);
	}
}

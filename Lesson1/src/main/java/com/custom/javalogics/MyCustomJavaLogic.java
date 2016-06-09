package com.custom.javalogics;

import org.apache.camel.CamelContext;
import org.apache.camel.Exchange;
import org.apache.camel.ExchangePattern;
import org.apache.camel.Processor;
import org.apache.camel.ProducerTemplate;

public class MyCustomJavaLogic implements Processor{

	@Override
	public void process(Exchange exchange) throws Exception {
		// TODO Auto-generated method stub
		CamelContext context=exchange.getContext();
		ProducerTemplate producerTemplate = context.createProducerTemplate();
		
		
		String data = (String) exchange.getIn().getBody();
		String newBody=data.toUpperCase();
		
		producerTemplate.sendBody("file:output/DataFromProducerTemplate?fileName=auditFile.txt", ExchangePattern.InOnly, newBody);
		
		exchange.getIn().setBody(newBody);
	}
}

package com.camel.poc.camelpoc;

import org.apache.camel.builder.RouteBuilder;
import org.springframework.stereotype.Component;

@Component
public class TestRoute extends RouteBuilder {
    @Override
    public void configure() throws Exception {
        from("jetty:http://[::]:6886/test")
                .log("received http request")
                .transform(simple("OK!"))
                .end();
    }
}

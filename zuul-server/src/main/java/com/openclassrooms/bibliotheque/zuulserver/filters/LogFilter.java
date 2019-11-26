package com.openclassrooms.bibliotheque.zuulserver.filters;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Component;

@Component
public class LogFilter extends ZuulFilter {


  @Override
  public String filterType() {
      return "pre";
  }

  @Override
  public int filterOrder() {
      return 1;
  }

  @Override
  public boolean shouldFilter() {
      return true;
  }

  @Override
  public Object run() throws ZuulException {

      HttpServletRequest req = RequestContext.getCurrentContext().getRequest();


      return null;
  }
}
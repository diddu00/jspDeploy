package kr.or.ddit.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@WebFilter("/localeServlet_CDL")
public class LocaleSelectFilter implements Filter {
	private Logger logger = LoggerFactory.getLogger(LocaleSelectFilter.class);
 
    public LocaleSelectFilter() {


    }

	public void destroy() {


	}


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//전처리
		HttpServletRequest req = (HttpServletRequest) request;
		logger.debug(req.getRequestURL()+" : /localeServlet_CDL");
		LocaleSelectWapper localeSelectWapper = new LocaleSelectWapper(req);
		
		//filter / 다른 servlet
		chain.doFilter(localeSelectWapper, response);
		
		//후처리
	}

	
	public void init(FilterConfig fConfig) throws ServletException {


	}

}

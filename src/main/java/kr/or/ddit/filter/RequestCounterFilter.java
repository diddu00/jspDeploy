package kr.or.ddit.filter;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Servlet Filter implementation class RequestconterFilter
 */
@WebFilter("/requestconterFilter")
public class RequestCounterFilter implements Filter {
	private Logger logger = LoggerFactory.getLogger(RequestCounterFilter.class);
	private Map<String, Integer> requestCountMap = new HashMap<String, Integer>();
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request; //어플리케이션영역에 저장하려면 ServletRequest객체를 불러야됨 - jsp이외에서
		ServletContext sc = request.getServletContext();
		
		//전처리
		logger.debug(req.getRequestURI());
		//Map객체에 uri를 키로 하고, 값: 해당 uri 요청된 횟수
		int cnt= requestCountMap.get(req.getRequestURI())==null?0:requestCountMap.get(req.getRequestURI());
		requestCountMap.put(req.getRequestURI(), ++cnt);
		sc.setAttribute("requestCountMap", requestCountMap);
		//다른필터, 혹은 더이상의 필터가 없을경우 요청에 대한 servlet 으로 전달
		chain.doFilter(request, response);

		//후처리 
	}


	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}

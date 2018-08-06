package kr.or.ddit.filter;

import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class LocaleSelectWapper extends HttpServletRequestWrapper{
	private Map<String,String[]> map;
	
	public LocaleSelectWapper(HttpServletRequest request) {
		super(request);
		
		map = new HashMap<String, String[]>(request.getParameterMap());
		map.put("userId", new String[]{"코리아인"});
		
		if(map.get("locale")==null||map.get("locale")[0].equals("")){
			map.put("locale", new String[]{"ja"});
		}
		
		
	}

	@Override
	public String getParameter(String name) {
		String [] locale = getParameterValues(name);
		return locale[0];
	}

	@Override
	public Map<String, String[]> getParameterMap() {
		return map;
	}

	@Override
	public Enumeration<String> getParameterNames() {
		return Collections.enumeration(map.keySet());
	}

	@Override
	public String[] getParameterValues(String name) {
		return map.get(name);
	}
	
	

}

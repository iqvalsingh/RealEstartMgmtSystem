/**
 * 
 */
package com.rems.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

import com.rems.bo.Admin;
import com.rems.bo.User;

/**
 * @author Satbir Kaur
 *
 */
@Component
public class REMSFilter implements Filter
{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException
	{
		HttpServletRequest	httpRequest		= (HttpServletRequest) request;
		HttpServletResponse	httpResponse	= (HttpServletResponse) response;
		HttpSession			session			= httpRequest.getSession();
		User				user			= (User) session.getAttribute("user");
		Admin				admin			= (Admin) session.getAttribute("adminUser");
		String				requestURI		= httpRequest.getRequestURI();

		if (admin == null && requestURI.contains("admin"))
		{
			httpResponse.sendRedirect("index.html");
		} else if (user == null && (requestURI.contains("user-profile.html")
				|| requestURI.contains("change-password.html") || requestURI.contains("add-property.html")
				|| requestURI.contains("my-properties.html") || requestURI.contains("enquries.html")
				|| requestURI.contains("edit-property.html") || requestURI.contains("view-enquiry-detail.html")))
		{
			// httpRequest.getRequestURI().replace(requestURI, "/rems/index.html");
			httpResponse.sendRedirect("index.html");
		} else
		{
			chain.doFilter(request, response);
		}
	}

}

package ma.emsi.miage3.ecommerce.prezStruts.presentations;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import ma.emsi.miage3.ecommerce.models.User;
import ma.emsi.miage3.ecommerce.prezStruts.models.UserAuthentification;


public class SessionInterceptor implements Interceptor {

	@Override
	public void destroy() {
		System.out.println("DESTROY");
	}

	@Override
	public void init() {
		System.out.println("INTI");
	}

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		
		Map session = actionInvocation.getInvocationContext().getSession();

		String actionName = ActionContext.getContext().getName();

		System.out.println("Action : " + actionName);

		UserAuthentification user = (UserAuthentification) session.get("user");
		if (user == null)
			return "login";
		else
			return actionInvocation.invoke();
	}

}

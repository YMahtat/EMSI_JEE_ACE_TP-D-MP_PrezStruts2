package ma.emsi.miage3.ecommerce.prezStruts.presentations;

import com.opensymphony.xwork2.ActionSupport;
import ma.emsi.miage3.ecommerce.access.UserBeanAccessSingleton;
import ma.emsi.miage3.ecommerce.models.User;
import ma.emsi.miage3.ecommerce.models.UserRole;
import ma.emsi.miage3.ecommerce.prezStruts.models.UserAuthentification;
import org.apache.struts2.interceptor.SessionAware;

import java.util.HashMap;
import java.util.Map;

public class LoginAction extends ActionSupport implements SessionAware {

  private UserAuthentification bean;
  private Map<String, Object> session;

  public Map getSession() {
    return session;
  }

  public void setSession(Map session) {
    this.session = session;
  }

  public UserAuthentification getBean() {
    return bean;
  }

  public void setBean(UserAuthentification bean) {
    this.bean = bean;
  }

  public String seConnecter() throws Exception {
    String userName = bean.getUsername();
    String password = bean.getPassword();
    User user = UserBeanAccessSingleton.getInstance().getUserBean().authenticateByUserNameAndPassword(userName, password);
    if(user.getRole().equals(UserRole.administrateur)){
      session.put("user", bean);
      return "success-admin";
    }
    else {
      return "login";
    }
  }

  public String seDeConnecter() throws Exception {
    if(session.get("user") != null)
      session.remove("user");
    return "login";
  }
}

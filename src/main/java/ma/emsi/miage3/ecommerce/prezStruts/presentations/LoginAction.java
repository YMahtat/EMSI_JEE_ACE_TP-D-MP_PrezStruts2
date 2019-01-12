package ma.emsi.miage3.ecommerce.prezStruts.presentations;

import com.opensymphony.xwork2.ActionSupport;
import ma.emsi.miage3.ecommerce.access.UserBeanAccessSingleton;
import ma.emsi.miage3.ecommerce.models.User;
import ma.emsi.miage3.ecommerce.models.UserRole;
import ma.emsi.miage3.ecommerce.prezStruts.models.UserAuthentification;

public class LoginAction extends ActionSupport {

  private UserAuthentification bean;

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
      return "success-admin";
    }
    else {
      return "login";
    }
  }
}

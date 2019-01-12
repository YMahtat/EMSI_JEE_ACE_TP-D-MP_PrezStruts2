package ma.emsi.miage3.ecommerce.prezStruts.presentations;

import com.opensymphony.xwork2.ActionSupport;
import ma.emsi.miage3.ecommerce.access.UserBeanAccessSingleton;
import ma.emsi.miage3.ecommerce.models.User;
import ma.emsi.miage3.ecommerce.models.UserRole;
import ma.emsi.miage3.ecommerce.prezStruts.models.UserAuthentification;

public class LoginAction extends ActionSupport {

  private UserAuthentification userAuthentification;

  public UserAuthentification getUserAuthentification() {
    return userAuthentification;
  }

  public void setUserAuthentification(UserAuthentification userAuthentification) {
    this.userAuthentification = userAuthentification;
  }

  public String seConnecter() throws Exception {
    String userName = userAuthentification.getUserName();
    String password = userAuthentification.getPassword();
    User user = UserBeanAccessSingleton.getInstance().getUserBean().authenticateByUserNameAndPassword(userName, password);
    if(user.getRole().equals(UserRole.administrateur)){
      return "success-admin";
    }
    else {
      return "login";
    }
  }
}

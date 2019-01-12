package ma.emsi.miage3.ecommerce.access;

import ma.emsi.miage3.ecommerce.ejbservices.UserRemote;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import java.util.Properties;

public class UserBeanAccessSingleton {

  private static UserBeanAccessSingleton ourInstance;

  private UserRemote userBean;

  public static UserBeanAccessSingleton getInstance() {
    if (ourInstance != null) {
      return ourInstance;
    } else {
      try {
        return ourInstance = new UserBeanAccessSingleton();
      } catch (NamingException e) {
        e.printStackTrace();
        return null;
      }
    }
  }

  private UserBeanAccessSingleton() throws NamingException {
    InitialContext context = null;
    Properties props = new Properties();
    props.put(Context.URL_PKG_PREFIXES, "org.jboss.ejb.client.naming");
    context = new InitialContext(props);
    String lookupName = "ejb:/emsi-ecommerce//UserBean!ma.emsi.miage3.ecommerce.ejbservices.UserRemote";
    System.out.println(lookupName);
    this.userBean = (UserRemote) context.lookup(lookupName);
    context.close();
  }

  public UserRemote getUserBean() {
    return userBean;
  }

  public void setUserBean(UserRemote userBean) {
    this.userBean = userBean;
  }
}

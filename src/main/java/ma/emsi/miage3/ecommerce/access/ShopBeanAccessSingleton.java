package ma.emsi.miage3.ecommerce.access;

import ma.emsi.miage3.ecommerce.ejbservices.ShopRemote;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import java.util.Properties;

public class ShopBeanAccessSingleton {


  private static ShopBeanAccessSingleton ourInstance;

  private ShopRemote shopBean;

  public static ShopBeanAccessSingleton getInstance() {
    if (ourInstance != null) {
      return ourInstance;
    } else {
      try {
        return ourInstance = new ShopBeanAccessSingleton();
      } catch (NamingException e) {
        e.printStackTrace();
        return null;
      }
    }
  }

  private ShopBeanAccessSingleton() throws NamingException {
    InitialContext context = null;
    Properties props = new Properties();
    props.put(Context.URL_PKG_PREFIXES, "org.jboss.ejb.client.naming");
    context = new InitialContext(props);
    String lookupName = "ejb:/emsi-ecommerce//ShopBean!ma.emsi.miage3.ecommerce.ejbservices.ShopRemote";
    System.out.println(lookupName);
    this.shopBean = (ShopRemote) context.lookup(lookupName);
    context.close();
  }

  public ShopRemote getShopBean() {
    return shopBean;
  }

  public void setShopBean(ShopRemote shopBean) {
    this.shopBean = shopBean;
  }
}

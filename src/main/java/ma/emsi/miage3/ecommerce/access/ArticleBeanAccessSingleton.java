package ma.emsi.miage3.ecommerce.access;

import ma.emsi.miage3.ecommerce.ejbservices.ArticleRemote;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import java.util.Properties;

public class ArticleBeanAccessSingleton {


  private static ArticleBeanAccessSingleton ourInstance;

  private ArticleRemote articleBean;

  public synchronized static ArticleBeanAccessSingleton getInstance() {
    if(ourInstance != null){
      return ourInstance;
    }
    else {
      try {
        return ourInstance = new ArticleBeanAccessSingleton();
      } catch (NamingException e) {
        e.printStackTrace();
        return null;
      }
    }
  }

  private ArticleBeanAccessSingleton() throws NamingException {
    InitialContext context = null;
      Properties props = new Properties();
      props.put(Context.URL_PKG_PREFIXES, "org.jboss.ejb.client.naming");
      context = new InitialContext(props);
      String lookupName =
              "ejb:/emsi-ecommerce//ArticleBean!ma.emsi.miage3.ecommerce.ejbservices.ArticleRemote";
      System.out.println(lookupName);
      this.articleBean = (ArticleRemote) context.lookup(lookupName);
      context.close();
  }

  public ArticleRemote getArticleBean() {
    return articleBean;
  }

  public void setArticleBean(ArticleRemote articleBean) {
    this.articleBean = articleBean;
  }
}
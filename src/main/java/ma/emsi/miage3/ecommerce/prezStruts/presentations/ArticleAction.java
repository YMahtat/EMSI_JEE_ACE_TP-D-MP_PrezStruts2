package ma.emsi.miage3.ecommerce.prezStruts.presentations;

import com.opensymphony.xwork2.ActionSupport;
import ma.emsi.miage3.ecommerce.access.ArticleBeanAccessSingleton;
import ma.emsi.miage3.ecommerce.models.Article;

import java.util.List;

public class ArticleAction extends ActionSupport {
  private List<Article> articles;

  public List<Article> getArticles() {
    return this.articles;
  }

  public void setArticles(List<Article> articles) {
    this.articles = articles;
  }

  public String getAllArticles() throws Exception {
    this.articles = ArticleBeanAccessSingleton.getInstance().getArticleBean().getAllArticles();
    System.out.println(ArticleBeanAccessSingleton.getInstance());
    System.out.println(this.articles);
    return "SUCCESS";
  }
}

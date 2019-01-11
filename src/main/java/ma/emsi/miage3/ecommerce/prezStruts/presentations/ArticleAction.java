package ma.emsi.miage3.ecommerce.prezStruts.presentations;

import com.opensymphony.xwork2.ActionSupport;
import ma.emsi.miage3.ecommerce.access.ArticleBeanAccessSingleton;
import ma.emsi.miage3.ecommerce.models.Article;

import java.util.List;

public class ArticleAction extends ActionSupport {
  private List<Article> articleList;

  public List<Article> getArticleList() {
    return articleList;
  }

  public void setArticleList(List<Article> articleList) {
    this.articleList = articleList;
  }

  public String test() throws Exception {
    articleList = ArticleBeanAccessSingleton.getInstance().getArticleBean().getAllArticles();
    System.out.println(ArticleBeanAccessSingleton.getInstance());
    System.out.println(articleList);
    return "SUCCESS";
  }
}

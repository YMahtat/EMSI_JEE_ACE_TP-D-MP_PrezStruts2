package ma.emsi.miage3.ecommerce.prezStruts.presentations;

import com.opensymphony.xwork2.ActionSupport;
import ma.emsi.miage3.ecommerce.access.ArticleBeanAccessSingleton;
import ma.emsi.miage3.ecommerce.models.Article;

import java.util.List;

public class ArticleAction extends ActionSupport {
  private List<Article> articles;

  private Article bean;
  private Integer id;

  public Article getBean() {
    return bean;
  }

  public void setBean(Article bean) {
    this.bean = bean;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

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
    if(this.articles != null) return "SUCCESS";
    else return "ERROR";
  }

  public String updateArticle() throws Exception {
    System.out.println("HANA");
    System.out.println(bean);
    Article article = ArticleBeanAccessSingleton.getInstance().getArticleBean().updateArticle(bean);
    System.out.println("UPDATE : " + article);
    if(article != null) return "SUCCESS";
    else return "ERROR";
  }

  public String deleteArticle() throws Exception {
    boolean removed = ArticleBeanAccessSingleton.getInstance().getArticleBean().deleteArticle(id);
    if(removed) return "SUCCESS";
    else return "ERROR";
  }

  public String addArticle() throws Exception {
    System.out.println(bean);
    Article article = ArticleBeanAccessSingleton.getInstance().getArticleBean().addArticle(bean);
    if(article != null && article.getId() != null) return "SUCCESS";
    else return "ERROR";
  }
}

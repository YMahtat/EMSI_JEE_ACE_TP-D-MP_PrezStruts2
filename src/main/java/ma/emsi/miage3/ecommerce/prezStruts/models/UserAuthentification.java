package ma.emsi.miage3.ecommerce.prezStruts.models;

public class UserAuthentification {
  private String userName;
  private String password;

  public UserAuthentification() {
    super();
  }

  public UserAuthentification(String userName, String password) {
    super();
    this.userName = userName;
    this.password = password;
  }

  public String getUserName() {
    return userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }
}

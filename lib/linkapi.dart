class AppLink {

  static const String server = "http://153.92.210.119/str";

  // Images Links
  static const String images_link = "http://153.92.210.119/str/upload";
  static const String categories_images = "$images_link/categories/svg";
  static const String items_images = "$images_link/items";

  static const String test = "$server/test.php";

  // AUTH links
  static const String signUp = "$server/auth/signup.php";
  static const String verifyCode = "$server/auth/verfiycode.php";
  static const String login = "$server/auth/login.php";

  // Forget Password
  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword = "$server/forgetpassword/resetpassword.php";
  static const String verifyCodeResetPassword = "$server/forgetpassword/verifycode.php";

  // Home Api
  static const String homePage = "$server/home.php";

  // Products
  static const String products = "$server/products/products.php";

}
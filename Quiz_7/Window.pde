public static class Display {
  public static int screenWidth = 1080;
  public static int screenHeight = 720;
  public static int halfWidth = screenWidth / 2;
  public static int halfHeight = screenHeight / 2;
  public static int boundTop = halfHeight;
  public static int boundBottom = -halfHeight;
  public static int boundLeft = -halfWidth;
  public static int boundRight = halfWidth;
  public static float viewDepth = -(screenHeight / 2.0) / tan(PI * 30.0 / 180.0);
}

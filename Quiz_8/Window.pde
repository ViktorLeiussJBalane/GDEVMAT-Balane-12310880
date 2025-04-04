public static class Bounds {
  public static int screenWidth = 1280;
  public static int screenHeight = 720;
  public static int halfWidth = screenWidth / 2;
  public static int halfHeight = screenHeight / 2;
  public static int top = halfHeight;
  public static int bottom = -halfHeight;
  public static int left = -halfWidth;
  public static int right = halfWidth;
  public static float viewDepth = -(screenHeight / 2.0) / tan(PI * 30.0 / 180.0);
}

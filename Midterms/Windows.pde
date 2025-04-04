public static class Viewport {
  public static int screenW = 1280;
  public static int screenH = 720;
  public static int halfW = screenW / 2;
  public static int halfH = screenH / 2;
  public static int minY = -halfH;
  public static int maxY = halfH;
  public static int minX = -halfW;
  public static int maxX = halfW;
  public static float depth = -(screenH / 2.0) / tan(PI * 30.0 / 180.0);
}

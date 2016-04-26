void filterHue(PImage img) {
  resultHue.loadPixels();
  color black = color(0, 0, 0);
  color white = color(255,255,255);
  float upperHue = 138;
  float lowerHue = 75; //LES BORNES POUR ISOLER LA COULEUR VERTE
  float upperBrightness = 232;
  float lowerBrightness = 0;
  float upperSaturation = 260;
  float lowerSaturation = 99;
  
  //brightness, staturation() THRESHOLDS !!!
  for (int i = 0; i < img.width * img.height; i++) {
    if (hue(img.pixels[i]) < upperHue && hue(img.pixels[i]) > lowerHue
        && brightness(img.pixels[i]) < upperBrightness && brightness(img.pixels[i]) > lowerBrightness
        && saturation(img.pixels[i]) < upperSaturation && saturation(img.pixels[i]) > lowerSaturation) {      
      resultHue.pixels[i] = white;
    }else{
      resultHue.pixels[i] = black;
    }
  }
  resultHue.updatePixels();
}
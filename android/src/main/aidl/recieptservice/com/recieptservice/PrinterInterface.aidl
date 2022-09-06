package recieptservice.com.recieptservice;


interface PrinterInterface {
     void printEpson(in byte []data);
     String getServiceVersion();
     void printText(String text);
     void printBitmap(in Bitmap pic);
     void printBarCode(String data, int symbology, int height, int width);
     void printQRCode(String data, int modulesize, int errorlevel);
     void setAlignment(int alignment);
     void setTextSize(float textSize);
     void nextLine(int line);
     void printTableText(in String[] text,in int []weight,in int []alignment);
     void setTextBold(boolean bold);
     void beginWork();
     void endWork();
     void setDark(int value);
     void setLineHeight(float lineHeight);
     void setTextDoubleWidth(boolean enable);
     void setTextDoubleHeight(boolean enable);
     void printPDF417Code(String data, int modulesize, int errorlevel);
     void setCode(String code);
     void print128BarCode(String data, int type, int height, int width);
     boolean getScannerStatus();
}

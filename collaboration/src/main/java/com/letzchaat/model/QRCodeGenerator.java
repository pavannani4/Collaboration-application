package com.letzchaat.model;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.HybridBinarizer;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;



public class QRCodeGenerator {
	public void qrGenerator()throws WriterException, IOException,
	NotFoundException {

String myCodeText="http://192.168.1.5:8089/Collaborative/listChat";   
String filePath="D:\\TrainingDT\\Collaborative\\src\\main\\webapp\\resources\\images\\verifyQR.jpg";
//String filePath="D:\\TrainingDT1\\QRCode\\src\\main\\webapp\\resources\\images\\verifyQR.jpg";
int size = 250;
String fileType = "jpg";
File myFile = new File(filePath);
try {
	
	Map<EncodeHintType, Object> hintMap = new EnumMap<EncodeHintType, Object>(EncodeHintType.class);
	hintMap.put(EncodeHintType.CHARACTER_SET, "UTF-8");
	
	// Now with zxing version 3.2.1 you could change border size (white border size to just 1)
	hintMap.put(EncodeHintType.MARGIN, 1); /* default = 4 */
	hintMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);

	QRCodeWriter qrCodeWriter = new QRCodeWriter();
	BitMatrix byteMatrix = qrCodeWriter.encode(myCodeText, BarcodeFormat.QR_CODE, size,
			size, hintMap);
	int CrunchifyWidth = byteMatrix.getWidth();
	BufferedImage image = new BufferedImage(CrunchifyWidth, CrunchifyWidth,
			BufferedImage.TYPE_INT_RGB);
	image.createGraphics();

	Graphics2D graphics = (Graphics2D) image.getGraphics();
	graphics.setColor(Color.WHITE);
	graphics.fillRect(0, 0, CrunchifyWidth, CrunchifyWidth);
	graphics.setColor(Color.BLACK);

	for (int i = 0; i < CrunchifyWidth; i++) {
		for (int j = 0; j < CrunchifyWidth; j++) {
			if (byteMatrix.get(i, j)) {
				graphics.fillRect(i, j, 1, 1);
			}
		}
	}
	ImageIO.write(image, fileType, myFile);
} catch (WriterException e) {
	e.printStackTrace();
} catch (IOException e) {
	e.printStackTrace();
}
System.out.println("\n\nYou have successfully created QR Code.");
}
}

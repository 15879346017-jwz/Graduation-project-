package com.interest.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;

import com.interest.util.ApplicationUtil;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGEncodeParam;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class FileUtil {

	public static String saveFiles(File file, String filedir, String urlFilePath, String filename) {
		String filePath = filedir + File.separator + urlFilePath;//separator相当于/分隔符
		if (!new File(filePath).exists()) {
			new File(filePath).mkdirs();
		}
		String lstr = Long.toString(System.currentTimeMillis());
		String fileName = lstr.substring(7) + "."
				+ ApplicationUtil.getFileSuffix(filename);
		String fn = "";
		if(ApplicationUtil.getFileSuffix(filename).equalsIgnoreCase("jpg")
		   ||ApplicationUtil.getFileSuffix(filename).equalsIgnoreCase("gif")
		   ||ApplicationUtil.getFileSuffix(filename).equalsIgnoreCase("png")
		   ||ApplicationUtil.getFileSuffix(filename).equalsIgnoreCase("jpeg")
		   ||ApplicationUtil.getFileSuffix(filename).equalsIgnoreCase("apk")) {
			
			fn = (urlFilePath+fileName).substring(1);
		}else {
			fn = (urlFilePath+fileName).substring(1);
		}
		InputStream content;
		try {
			FileOutputStream fos=new FileOutputStream(filedir+urlFilePath+"//"+fileName);
		      FileInputStream fis=new FileInputStream(file);
		      byte[] buffer=new byte[1024];
		      int len=0;
		      try {
				while((len=fis.read(buffer))>0){
				   fos.write(buffer,0,len);
				  }
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		   /*   
			File savedFile = new File(filePath, fileName);
			file.renameTo(savedFile);
			
			content = new FileInputStream(file);
			*/
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return urlFilePath + fileName;
	}
	
	/**
	 * 上传Android apk
	 * @param file
	 * @param filedir
	 * @param urlFilePath
	 * @param filename
	 * @return
	 */
	public static String saveApkFiles(File file, String filedir, String apklFilePath, String filename) {
		String filePath = filedir + File.separator + apklFilePath;//separator相当于/分隔符
		if (!new File(filePath).exists()) {
			new File(filePath).mkdirs();
		}
		String lstr = Long.toString(System.currentTimeMillis());
//		String fileName = lstr.substring(7) + "."
//				+ ApplicationUtil.getFileSuffix(filename);
		String fn = "";
		if(ApplicationUtil.getFileSuffix(filename).equalsIgnoreCase("apk")) {
			
			fn = (apklFilePath+filename).substring(1);
		}else {
			fn = (apklFilePath+filename).substring(1);
		}
		InputStream content;
		try {
			FileOutputStream fos=new FileOutputStream(filedir+apklFilePath+"//"+filename);
		      FileInputStream fis=new FileInputStream(file);
		      byte[] buffer=new byte[1024];
		      int len=0;
		      try {
				while((len=fis.read(buffer))>0){
				   fos.write(buffer,0,len);
				  }
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		   /*   
			File savedFile = new File(filePath, fileName);
			file.renameTo(savedFile);
			
			content = new FileInputStream(file);
			*/
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return apklFilePath + filename;
	}

	/**
	 * 新建目录
	 * 
	 * @param folderPath
	 *            String c:/fqf
	 * @return boolean
	 */
	public static void newFolder(String folderPath) {
		try {
			String filePath = folderPath;
			filePath = filePath.toString();
			java.io.File myFilePath = new java.io.File(filePath);
			if (!myFilePath.exists()) {
				myFilePath.mkdir();
			}
		} catch (Exception e) {
			System.out.println("新建目录操作出错 ");
			e.printStackTrace();
		}
	}

	/**
	 * 新建文件
	 * 
	 * @param filePathAndName
	 *            String 文件路径及名称如c:/fqf.txt
	 * @param fileContent
	 *            String 文件内容
	 * @return boolean
	 */
	public static void newFile(String filePathAndName, String fileContent) {

		try {
			String filePath = filePathAndName;
			filePath = filePath.toString();
			File myFilePath = new File(filePath);
			if (!myFilePath.exists()) {
				myFilePath.createNewFile();
			}
			FileWriter resultFile = new FileWriter(myFilePath);
			PrintWriter myFile = new PrintWriter(resultFile);
			String strContent = fileContent;
			myFile.println(strContent);
			resultFile.close();

		} catch (Exception e) {
			System.out.println("新建目录操作出错 ");
			e.printStackTrace();

		}

	}

	/**
	 * 删除文件
	 * 
	 * @param filePathAndName
	 *            String 文件路径及名称如c:/fqf.txt
	 * @param fileContent
	 *            String
	 * @return boolean
	 */
	public static void delFile(String filePathAndName) {
		try {
			String filePath = filePathAndName;
			filePath = filePath.toString();
			java.io.File myDelFile = new java.io.File(filePath);
			myDelFile.delete();

		} catch (Exception e) {
			System.out.println("删除文件操作出错 ");
			e.printStackTrace();

		}

	}

	/**
	 * 删除文件
	 * 
	 * @param filePathAndName
	 *            String 文件夹路径及名称 如c:/fqf
	 * @param fileContent
	 *            String
	 * @return boolean
	 */
	public static void delFolder(String folderPath) {
		try {
			delAllFile(folderPath); // 删除完里面所有内内容
			String filePath = folderPath;
			filePath = filePath.toString();
			java.io.File myFilePath = new java.io.File(filePath);
			myFilePath.delete(); // 删除空文件夹

		} catch (Exception e) {
			System.out.println("删除文件夹操作出错");
			e.printStackTrace();

		}

	}

	/**
	 * 删除文件夹里面的所有文件
	 * 
	 * @param path
	 *            String 文件夹路径c:/fqf
	 */
	public static void delAllFile(String path) {
		File file = new File(path);
		if (!file.exists()) {
			return;
		}
		if (!file.isDirectory()) {
			return;
		}
		String[] tempList = file.list();
		File temp = null;
		for (int i = 0; i < tempList.length; i++) {
			if (path.endsWith(File.separator)) {
				temp = new File(path + tempList[i]);
			} else {
				temp = new File(path + File.separator + tempList[i]);
			}
			if (temp.isFile()) {
				temp.delete();
			}
			if (temp.isDirectory()) {
				delAllFile(path + "/ " + tempList[i]);// 先删除文件夹里面的文件
				delFolder(path + "/ " + tempList[i]);// 再删除空文件夹
			}
		}
	}

	/**
	 * 复制单个文件
	 * 
	 * @param oldPath
	 *            String 原文件路径如：c:/fqf.txt
	 * @param newPath
	 *            String 复制后路径如：f:/fqf.txt
	 * @return boolean
	 */
	public static void copyFile(String oldPath, String newPath) {
		InputStream inStream = null;
		FileOutputStream fs = null;
		try {
			int bytesum = 0;
			int byteread = 0;
			File oldfile = new File(oldPath);
			if (oldfile.exists()) { // 文件存在
				inStream = new FileInputStream(oldPath); // 读入原文件
				fs = new FileOutputStream(newPath);
				byte[] buffer = new byte[1444];
				while ((byteread = inStream.read(buffer)) != -1) {
					bytesum += byteread; // 字节文件大小
					fs.write(buffer, 0, byteread);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (inStream != null) {
					inStream.close();
				}
				if (fs != null) {
					fs.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 复制整个文件夹内容
	 * 
	 * @param oldPath
	 *            String 原文件路径如：c:/fqf
	 * @param newPath
	 *            String 复制后路径如：f:/fqf/ff
	 * @return boolean
	 */
	public static void copyFolder(String oldPath, String newPath) {

		try {
			(new File(newPath)).mkdirs(); // 如果文件夹不存在 则建立新文件夹
			File a = new File(oldPath);
			String[] file = a.list();
			File temp = null;
			for (int i = 0; i < file.length; i++) {
				if (oldPath.endsWith(File.separator)) {
					temp = new File(oldPath + file[i]);
				} else {
					temp = new File(oldPath + File.separator + file[i]);
				}

				if (temp.isFile()) {
					FileInputStream input = new FileInputStream(temp);
					FileOutputStream output = new FileOutputStream(newPath
							+ "/ " + (temp.getName()).toString());
					byte[] b = new byte[1024 * 5];
					int len;
					while ((len = input.read(b)) != -1) {
						output.write(b, 0, len);
					}
					output.flush();
					output.close();
					input.close();
				}
				if (temp.isDirectory()) {// 如果是子文件夹
					copyFolder(oldPath + "/ " + file[i], newPath + "/ "
							+ file[i]);
				}
			}
		} catch (Exception e) {
			System.out.println("复制整个文件夹内容操作出错");
			e.printStackTrace();

		}

	}

	/**
	 * 移动文件到指定目录
	 * 
	 * @param oldPath
	 *            String 如：c:/fqf.txt
	 * @param newPath
	 *            String 如：d:/fqf.txt
	 */
	public static void moveFile(String oldPath, String newPath) {
		copyFile(oldPath, newPath);
		delFile(oldPath);

	}

	/**
	 * 移动文件到指定目录
	 * 
	 * @param oldPath
	 *            String 如：c:/fqf.txt
	 * @param newPath
	 *            String 如：d:/fqf.txt
	 */
	public static void moveFolder(String oldPath, String newPath) {
		copyFolder(oldPath, newPath);
		delFolder(oldPath);

	}

	public static void createFile(String filename, byte[] bytes) {
		FileOutputStream output;
		try {
			File myFilePath = new File(filename);
			if (!myFilePath.getParentFile().exists()) {
				myFilePath.getParentFile().mkdirs();
			}
			if (!myFilePath.exists()) {
				myFilePath.createNewFile();
			}
			output = new FileOutputStream(filename);
			output.write(bytes);
			output.flush();
			output.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static byte[] getBytesFile(String filename) {
		try {
			File file = new File(filename);
			if (file.exists()) {
				FileInputStream fis = new FileInputStream(filename);
				if (fis != null) {
					int len = fis.available();
					byte[] bytes = new byte[len];
					fis.read(bytes);
					return bytes;
				}
			}
		} catch (Exception ee) {
			ee.printStackTrace();
		}
		return null;
	}

	public static void download(String urlString, String filename)
			throws Exception {
		URL url = new URL(urlString);
		URLConnection con = url.openConnection();
		InputStream is = con.getInputStream();
		byte[] bs = new byte[1024];
		int len;
		File myFilePath = new File(filename);
		if (!myFilePath.getParentFile().exists()) {
			myFilePath.getParentFile().mkdirs();
		}
		if (!myFilePath.exists()) {
			myFilePath.createNewFile();
		}
		OutputStream os = new FileOutputStream(filename);
		while ((len = is.read(bs)) != -1) {
			os.write(bs, 0, len);
		}
		os.close();
		is.close();
	}

	public static void textTurnPicture(String imagePath, String text) {
		try {
			// 文件路径及文件名生成

			System.out.println("======================filepath======"
					+ imagePath);
			FileOutputStream t = new FileOutputStream(imagePath);
			BufferedImage bi = new BufferedImage(500, 500,
					BufferedImage.TYPE_INT_RGB);
			Graphics2D g = bi.createGraphics();
			g.setBackground(Color.BLUE);
			g.clearRect(0, 0, 500, 500);
			g.drawString(text, 15, 15);
			JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(t);
			JPEGEncodeParam param = encoder.getDefaultJPEGEncodeParam(bi);
			param.setQuality(1.0f, false);
			encoder.setJPEGEncodeParam(param);
			encoder.encode(bi);
			t.close();
			System.out.println("ok ");
		} catch (Exception e) {
			System.out.println("error ");
		}
	}

	public static boolean saveStringToPic(String content, String filePath) {
		boolean rs;
		int width = 1024; // 300;
		int height = 600;
		int lineLength = 47;// 23;
		int lineLength2 = 47;// 24;
		String content1 = content;
		String content2 = "";
		String content3 = "";
		int cnLineLength = lineLength;
		for (int i = 0; i < content.length(); i++) {
			char ca = content.charAt(i);
			if ((ca < '0' || ca > '9') && ca != '-' && ca != ':' && ca != '('
					&& ca != ')' && ca != '.' && ca != ',' && ca != ' ') {
				cnLineLength = cnLineLength - 1;
			}
			if (i >= cnLineLength)
				break;
		}
		if (content.length() > cnLineLength) {
			content1 = content.substring(0, cnLineLength);
			content2 = content.substring(cnLineLength);
			String line2 = content2;
			int cnLineLength2 = lineLength2;
			for (int i = 0; i < line2.length(); i++) {
				char ca = line2.charAt(i);
				if ((ca < '0' || ca > '9') && ca != '-' && ca != ':'
						&& ca != '(' && ca != ')' && ca != '.' && ca != ','
						&& ca != ' ') {
					cnLineLength2 = cnLineLength2 - 1;
				}
				if (i >= cnLineLength2)
					break;
			}
			if (line2.length() > cnLineLength2) {
				content2 = line2.substring(0, cnLineLength2);
				content3 = line2.substring(cnLineLength2);
			}
		}
		BufferedImage bi = null;
		Graphics2D g2 = null;
		OutputStream outPutStream = null;
		try {
			bi = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
			g2 = (Graphics2D) bi.getGraphics();
			// g2.setBackground(Color.white);
			Color bg = new Color(255, 255, 255);
			g2.setColor(bg);
			g2.fillRect(0, 0, width, height);
			g2.setColor(Color.black);
			Font font = new Font("宋体", Font.BOLD, 80);
			g2.setFont(font);
			g2.drawString(content1, 10, 200);
			g2.drawString(content2, 10, 300);
			g2.drawString(content3, 10, 400);
			outPutStream = new FileOutputStream(filePath);
			JPEGImageEncoder encoder = JPEGCodec
					.createJPEGEncoder(outPutStream);
			encoder.encode(bi);
			rs = true;
		} catch (Exception e) {
			e.printStackTrace();
			rs = false;
		} finally {
			if (g2 != null) {
				g2.dispose();
			}
			if (outPutStream != null) {
				try {
					outPutStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return rs;
	}

	public static void createFile(String filename, byte[] bytes, String name,
			String uname) {
		FileOutputStream output;
		try {
			File myFilePath = new File(filename);
			if (!myFilePath.getParentFile().exists()) {
				myFilePath.getParentFile().mkdirs();
			}
			if (!myFilePath.exists()) {
				myFilePath.createNewFile();
			}
			output = new FileOutputStream(filename);
			output.write(bytes);
			output.flush();
			output.close();
			if (name != null) {
				String fn = "";
				if (ApplicationUtil.getFileSuffix(filename).equalsIgnoreCase(
						"jpg")
						|| ApplicationUtil.getFileSuffix(filename)
								.equalsIgnoreCase("gif")
						|| ApplicationUtil.getFileSuffix(filename)
								.equalsIgnoreCase("png")
						|| ApplicationUtil.getFileSuffix(filename)
								.equalsIgnoreCase("jpeg")) {

					fn = (uname + name).substring(1);
				} else {
					fn = (uname + name).substring(1);
				}
				InputStream content = new FileInputStream(new File(filename));
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	  /** 
     * 删除单个文件 
     * @param   sPath    被删除文件的文件名 
     * @return 单个文件删除成功返回true，否则返回false 
     */  
    public static boolean deleteFile(String sPath) {  
        boolean flag = false;  
        File file = new File(sPath);  
        // 路径为文件且不为空则进行删除  
        if (file.isFile() && file.exists()) {  
            file.delete();  
            flag = true;  
        }  
        return flag;  
    }  
}

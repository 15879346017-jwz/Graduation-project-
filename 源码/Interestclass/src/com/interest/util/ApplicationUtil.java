package com.interest.util;


public class ApplicationUtil {
	private static final String imageWebrootKey = "conf.global.upload.image.webroot";
	private static final String fileWebrootKey = "conf.global.upload.file.webroot";
	private static final String imageDirKey = "conf.global.upload.image.dir";
	private static final String fileDirKey = "conf.global.upload.file.dir";

	private static final String defaultUserImage = "conf.default.user.image";
	private static final String defaultUserIbmclubface = "conf.default.user.ibmclubface";
	
	private static final String defaultActivityposter = "conf.default.activity.image";
	
	private static final String decryptkey = "conf.global.decrypt.key";//接口加密密文
	
	public static String getDecryptkey() {
		return PropertiesUtils.getValue(decryptkey);
	}

	public static String getImageWebroot() {
		return PropertiesUtils.getValue(imageWebrootKey);
	}

	public static String getDefaultUserImage() {
		return PropertiesUtils.getValue(defaultUserImage);
	}


	public static String getDefaultUserIbmclubface() {
		return PropertiesUtils.getValue(defaultUserIbmclubface);
	}

	public static String getDefaultActivityposter() {
		return PropertiesUtils.getValue(defaultActivityposter);
	}

	public static String getImageDir() {
		return PropertiesUtils.getValue(imageDirKey);
	}


	public static String getFileDir() {
		return PropertiesUtils.getValue(fileDirKey);
	}
	
	public static String getFileWebroot() {
		return PropertiesUtils.getValue(fileWebrootKey);
	}


	public static String getSystemDomain() {
		return PropertiesUtils.getValue(imageDirKey);
	}

	public static String getFileSuffix(String filename) {
		return filename.substring(filename.lastIndexOf(".") + 1);
	}



}

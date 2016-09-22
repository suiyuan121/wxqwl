package cn.wxqwl.zj.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import cn.wxqwl.zj.web.SystemConstants;

public class SysFileUtils {

	private static final Logger logger = LoggerFactory
			.getLogger(SysFileUtils.class);

	public static String copyPicFile(MultipartFile file, String imagePath) {

		String dateOfMonthString = DateUtil.formatMonth(new Date(System
				.currentTimeMillis()));
		MultipartFile haedImage = file;
		// 文件名
		String fileName = haedImage.getOriginalFilename();
		String fileExtension = fileName.substring(fileName.lastIndexOf(".")); // 文件扩展名
		// example: uid_{uuid}.jpg
		String savedFileName = "HeadImage" + "_" + UUID.randomUUID().toString()
				+ fileExtension;
		// 文件夹地址
		String fileLocation = "";
		try {
			fileLocation = imagePath + dateOfMonthString;

			// save it
			long fileSize = writeToFile(haedImage.getInputStream(),
					fileLocation, savedFileName, SystemConstants.file_size);
			if (fileSize == -1) {
				logger.info("图片新增失败  -超过最大尺寸");
				// delete the file
				new File(fileLocation, savedFileName).delete();
				return "-1";
			}
			return fileLocation + File.separatorChar + savedFileName;
		} catch (IOException e) {
			logger.error(String.format("上传头像失败  ", e.getMessage()), e);
			return null;
		}

	}

	public static long writeToFile(InputStream uploadedInputStream,
			String fileLocation, String fileName, long maxSize) {
		logger.info(String.format("fileLocation=%s,fileName=%s", fileLocation,
				fileName));
		long fileSize = 0;

		try {
			File file = new File(fileLocation);
			logger.info(String.format("文件是否存在  =%s", file.exists()));
			// 不存在该文件夹就新建
			if (!file.exists()) {
				file.mkdir();
			}
			int read = 0;
			byte[] bytes = new byte[4096];

			OutputStream out = new FileOutputStream(new File(file, fileName));
			while ((read = uploadedInputStream.read(bytes)) != -1) {
				out.write(bytes, 0, read);
				fileSize += read;
				if (fileSize > maxSize) {
					fileSize = -1;
					break;
				}
			}
			out.flush();
			out.close();
		} catch (IOException e) {
			logger.error(String.format("复制文件失败  fileLocation=%s，fileName=%s",
					fileLocation, fileName), e);
			return -2;
		}
		return fileSize;
	}

	public static String getTempImageUrl(String imageUrl,
			HttpServletRequest request) {

		if (StringUtils.isBlank(imageUrl)) {
			return null;
		}

		File logoFile = new File(imageUrl);
		if (logoFile.exists() && logoFile.canRead()) {

			String logoFileName = logoFile.getName();

			String tempViewPath = request.getSession().getServletContext()
					.getRealPath(File.separator + "upload");
			try {
				FileUtils.copyFile(logoFile, new File(tempViewPath,
						logoFileName));

				return request.getContextPath() + File.separator + "upload"
						+ File.separator + logoFileName;
			} catch (IOException e) {
				logger.error("", e);
			}
		}
		return null;
	}
}

package cn.wxqwl.zj.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class FileUtils {

    private static final Logger logger = LoggerFactory.getLogger(FileUtils.class);

    public static long writeToFile(InputStream uploadedInputStream, String fileLocation,
                                   String fileName, long maxSize) {
        logger.info(String.format("fileLocation=%s,fileName=%s", fileLocation, fileName));
        long fileSize = 0;

        try {
            File file = new File(fileLocation);
            logger.info(String.format("文件是否存在  =%s", file.exists()));
            //不存在该文件夹就新建
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
            logger.error(
                String.format("复制文件失败  fileLocation=%s，fileName=%s", fileLocation, fileName), e);
            return -2;
        }
        return fileSize;
    }
}

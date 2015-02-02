package com.brewduck.web.common.controller;

/**
 * Created with IntelliJ IDEA.
 * User: hukoru
 * Date: 13. 8. 19
 * Time: 오후 1:53
 * To change this template use File | Settings | File Templates.
 */


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.PrintWriter;


@Controller
@RequestMapping("/download")
public class FileDownloadController {

    private static final Logger logger = LoggerFactory.getLogger(FileDownloadController.class);

    @RequestMapping(value = "/downloadFile.do")
    public void downloadFile(
        @RequestParam(value = "requestedFile") String requestedFile,
        HttpServletResponse response) throws Exception {

        //String uploadPath = fileUploadProperties.getProperty("file.upload.path");

        String uploadPath = "/home/brewduck/upload/";

        File uFile = new File(uploadPath, requestedFile);
        int fSize = (int) uFile.length();

        if (fSize > 0) {


            BufferedInputStream in = new BufferedInputStream(
                new FileInputStream(uFile));
            // String mimetype = servletContext.getMimeType(requestedFile);
            // String mimetype = "image/jpeg";

            response.setBufferSize(fSize);
            //response.setContentType(mimetype);
            response.setHeader("Content-Disposition", "attachment; filename=\""
                + requestedFile + "\"");
            response.setContentLength(fSize);

            FileCopyUtils.copy(in, response.getOutputStream());
            in.close();
            response.getOutputStream().flush();
            response.getOutputStream().close();
        } else {
            //setContentType을 프로젝트 환경에 맞추어 변경
            response.setContentType("application/x-msdownload");
            PrintWriter printwriter = response.getWriter();
            printwriter.println("<html>");
            printwriter.println("<br><br><br><h2>Could not get file name:<br>"
                + requestedFile + "</h2>");
            printwriter
                .println("<br><br><br><center><h3><a href='javascript: history.go(-1)'>Back</a></h3></center>");
            printwriter.println("<br><br><br>&copy; webAccess");
            printwriter.println("</html>");
            printwriter.flush();
            printwriter.close();
        }
    }
}

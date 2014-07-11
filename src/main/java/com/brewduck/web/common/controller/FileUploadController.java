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
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequest.*;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.tools.Tool;
import java.io.*;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;


@Controller
@RequestMapping("/fileupload")
public class FileUploadController {

    private static final Logger logger = LoggerFactory.getLogger(FileUploadController.class);



    @RequestMapping(method=RequestMethod.GET)
    public void fileUploadForm() {
    }

    @RequestMapping(method=RequestMethod.POST)
    public String processUpload(@RequestParam MultipartFile file, Model model) throws IOException {
        logger.warn("### 파일업로드 페이지");
        logger.warn("File " + file.getOriginalFilename());
        String fileName = file.getOriginalFilename();
        file.transferTo(new File("C:/upload/"+fileName));

        model.addAttribute("message", "File '" + file.getOriginalFilename() + "' uploaded successfully");
        return "redirect:/profile/index";
    }



    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String uploadFile(HttpServletRequest request, Model model) throws IOException {

        MultipartHttpServletRequest multipart = (MultipartHttpServletRequest) request;
        MultipartFile file = multipart.getFile("Filedata");
        String callBack = multipart.getParameter("callback_func");
        String fileName = file.getOriginalFilename();
        //file.transferTo(new File("C:/upload/" + fileName));
        String convFilename = "";

        if(file.getSize() > 0){
            File out = new File("C:/upload/" + fileName);
            FileCopyUtils.copy(file.getBytes(), out);
            convFilename = out.getName();
            logger.info("ConvertFilename : {}", convFilename);
            logger.info("callBack : {}", callBack);
        }

        model.addAttribute("filename", convFilename);
        model.addAttribute("callback_func", callBack);

        return "/common/callback";
    }

    @RequestMapping(value = "/upload2", method = RequestMethod.POST)
    @ResponseBody public String makePhoto(HttpServletRequest req, HttpSession session, HttpServletResponse resp){



        Enumeration em =req.getHeaderNames();
        while(em.hasMoreElements()){
            String name = (String)em.nextElement(); // 헤더의 name값을 얻어오기
            String value = req.getHeader(name);   // 얻어온 헤더의 name값으로 value값 얻어오기
            System.out.println( name + ":" + value);
        }

        String fileName = req.getHeader("file-name");


        try{
            /*
            System.out.print("available " + req.getInputStream().available() );
            System.out.print("ContentLength " + req.getContentLength() );
            System.out.print("ContentLength " + req.getInputStream() );
            */
            InputStream input = req.getInputStream();


            File file = new File("C:/upload/" + fileName);
            FileOutputStream outSource = new FileOutputStream(file);

            byte[] data = new byte[1024];
            int length = 0;

            System.out.println("fuck : " + input.read(data));

            while( (length = input.read(data)) != -1 ) {
                outSource.write(data, 0, length);
            }

            BufferedInputStream is = new BufferedInputStream(req.getInputStream());
            int available = is.available();
            byte[] buf= new byte[8192];
            int count = is.read(buf,0, available );
            ServletOutputStream out = resp.getOutputStream();
            System.out.println( available + " " + count);

            String rootPath = session.getServletContext().getRealPath("/");
            //File file = new File(rootPath + fileName);


            //DataInputStream dis = new DataInputStream(req.getInputStream());

            DataInputStream dis = new DataInputStream(req.getInputStream());
            DataOutputStream dos = new DataOutputStream(new FileOutputStream(file));

            int read = 0;
            while ((read = dis.read()) != -1) {
                dos.write(read);
            }

        }catch (IOException e) {
            e.printStackTrace();
        }

        return "bNewLine=true&sFileName=" + fileName + "&sFileURL=/ContextPath/"+fileName;
    }
}
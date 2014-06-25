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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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
    @ResponseBody
    public List uploadFile(MultipartHttpServletRequest request, Model model) {
        Iterator<String> itr =  request.getFileNames();

        List<String> fileList = new ArrayList<String>();

        if(itr.hasNext()) {
            MultipartFile mpf = request.getFile(itr.next());
            System.out.println(mpf.getOriginalFilename() +" uploaded!");
            try {
                //just temporary save file info into ufile
                model.addAttribute("message", "File '" + mpf.getOriginalFilename() + "' uploaded successfully");
                model.addAttribute("file_name", mpf.getOriginalFilename() );

                fileList.add("true");
                fileList.add(mpf.getOriginalFilename());
                fileList.add(mpf.getBytes().length+"");



                System.out.println("file length : " + mpf.getBytes().length);
                System.out.println("file name : " + mpf.getOriginalFilename());
            } catch (IOException e) {
                System.out.println(e.getMessage());
                e.printStackTrace();
            }
            return fileList;
        } else {
            fileList.add("false");
            return fileList;
        }
    }
}
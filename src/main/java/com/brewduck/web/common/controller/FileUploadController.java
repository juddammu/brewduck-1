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

    @RequestMapping(value = "/upload", headers = "content-type=multipart/*", method = RequestMethod.POST)
    @ResponseBody
    public String uploadFile(@RequestParam MultipartFile file,  Model model) throws IOException {
        logger.debug("### 파일업로드 페이지");
        logger.debug("File " + file.getOriginalFilename());
        String fileName = file.getOriginalFilename();
        file.transferTo(new File("C:/upload/"+fileName));

        model.addAttribute("message", "File '" + file.getOriginalFilename() + "' uploaded successfully");

        return "redirect:/profile/index";
    }
}
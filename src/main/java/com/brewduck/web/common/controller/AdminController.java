package com.brewduck.web.common.controller;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.common.service.AdminService;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.Admin;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

    @Autowired
    private AdminService adminService;

    /**
     * <pre>
     * 게시판 메인
     * </pre>
     *
     * @param model Model
     * @return 게시판 메인
     */
    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public String admindMain(Model model, Admin admin) {
        logger.info("Admin Main");

        Account account = AuthenticationUtils.getUser();
        model.addAttribute("account", account);

        return "admin/main";
    }

    /**
     * <pre>
     * 자유게시판 리스트.
     * </pre>
     *
     * @param model Model
     * @return 자유게시판 리스트
     */
    @RequestMapping(value = "/userList", method = RequestMethod.GET)
    public List<Admin> selectUserList(Model model, Admin admin) {
        logger.info("User List");

        List<Admin> list = adminService.selectUserList(admin);
        logger.info("User List : {}", list.size());
        model.addAttribute("list", list);

        return list;
    }
}



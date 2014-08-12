package com.brewduck.framework.security;

import com.brewduck.web.domain.Account;
import org.springframework.security.access.PermissionEvaluator;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;

import java.io.Serializable;

/**
 * 회원 등급 권한 평가
 *
 * User: JAEGER
 * Date: 2014. 08. 09
 */
public class UserGradePermissionEvaluator implements PermissionEvaluator {

    private SessionService sessionService;

    public void setSessionService(SessionService sessionService) {
        this.sessionService = sessionService;
    }

    @Override
    public boolean hasPermission(Authentication authentication, Object targetDomainObject, Object permission) {
        boolean hasPermission = false;
//
//        if ( authentication != null &&  permission instanceof String){
//            Account account = sessionService.getLoginUser();
//            String grade = account.getAuthority();
//
//            if ("관리자".equals(grade)) {
//                hasPermission = true;
//            }
//        }

        return hasPermission;
    }

    @Override
    public boolean hasPermission(Authentication authentication, Serializable targetId, String targetType, Object permission) {
        throw new RuntimeException("Id and Class permissions are not supperted by this application");
    }
}

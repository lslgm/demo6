package com.example.demo.Controller;

import org.apache.coyote.Request;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@Controller
public class flieupload {
    @GetMapping("/")
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response) throws  Exception{
        ModelAndView mav = new ModelAndView("/index");
        return mav;
    }

    @PostMapping("/upload")
    public ModelAndView upload(@RequestParam("file") MultipartFile file,HttpServletRequest request, HttpServletResponse response ) throws  Exception{

        String fileName = file.getOriginalFilename();//파일의 위치 및 이름정보를 읽어 온다
        String filePath = request.getSession().getServletContext().getRealPath("/images/"); //서버에서 webapp의 위치+images폴더를 추가해서 저장
        //fileupload/src/main/webapp/images/
        try {
            file.transferTo(new File(filePath+fileName));
            System.out.println("이미지를 업로드 성공");
        } catch (IllegalStateException| IOException e){ //상태및 파일저장 오류
            e.printStackTrace();
        }
        ModelAndView mav = new ModelAndView("/imageview");
        mav.addObject("file",fileName);
        return mav;
    }
}

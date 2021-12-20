package controller;


import model.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.MemberService;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MemberController {

    @Autowired
    private MemberService memberService;

//   회원가입 페이지
    @RequestMapping(value = "/joinFrom")
    public String MemberJoinPage(){
        return "/member/joinForm";
    }

//  회원가입
    @RequestMapping(value = "/join", method = RequestMethod.POST)
    public String MemberJoin(Member member, HttpServletRequest request) throws Exception{
        String phone = request.getParameter("phone1")+"|"
                + request.getParameter("phone2") + "|"
                + request.getParameter("phone3");
        String email = request.getParameter("email1")+"|"
                + request.getParameter("email2");

        member.setId(request.getParameter("id").trim());
        member.setPasswd(request.getParameter("passwd").trim());
        member.setName(request.getParameter("name").trim());
        member.setAddr(request.getParameter("addr"));
        member.setAddr2(request.getParameter("addr2"));
        member.setPost(Integer.parseInt(request.getParameter("post")));
        member.setPhone(phone);
        member.setEmail(email);
        member.setConm(request.getParameter("conm"));

        memberService.insertMember(member);

        return "member/joinResult";
    }


}

package service;


import dao.MemberDAO;
import model.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

    @Autowired
    private MemberDAO memberDAO;

    public String insertMember(Member member) throws Exception{
        return memberDAO.insertMember(member);
    }

}

package dao;

import model.Member;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

    @Autowired
    private SqlSession sqlSession;

    public String insertMember(Member member) throws Exception{
        return String.valueOf(sqlSession.insert("join",member));
    }

}

package com.example;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    private JdbcTemplate template;

    @Autowired
    SqlSession sqlSession;
    public int insertBoard(BoardVO vo){
        int result = sqlSession.insert("Board.insertBoard",vo);
        return result;
    }
    public int deleteBoard(int sid){
        int result = sqlSession.delete("Board.deleteBoard",sid);
        return result;
    }
    public int updateBoard(BoardVO vo){
        int result = sqlSession.update("Board.updateBoard",vo);
        return result;
    }
    public BoardVO getBoard(int sid){
        BoardVO one = sqlSession.selectOne("Board.getBoard",sid);
        return one;
    }

    public List<BoardVO> getBoardList(){
        List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
        return list;


    }
}

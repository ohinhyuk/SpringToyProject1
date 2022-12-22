package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    private JdbcTemplate template;

    public int insertBoard(BoardVO vo){
        String sql = "Insert into ToyProject1 (Name,Gender,Age) values('"
                + vo.getName() + "', '"
                + vo.getGender() + "', '"
                + vo.getAge() + "')";
        return template.update(sql);
    }
    public int deleteBoard(int sid){
        String sql = "delete from ToyProject1 where sid = " + sid;
        return template.update(sql);
    }
    public int updateBoard(BoardVO vo){
        String sql = "update ToyProject1 set name ='" + vo.getName()
                + "', gender = '" + vo.getGender() + "' , age= '" + vo.getAge()
                + "' where sid=" + vo.getSid();
        return template.update(sql);
    }
    public BoardVO getBoard(int sid){
        String sql = "select * from ToyProject1 where sid =" + sid;
        return template.queryForObject(sql , new BoardRowMapper());
    }

    public List<BoardVO> getBoardList(){
        String sql = "select * from ToyProject1 order by regdate desc";
        return template.query(sql, new BoardRowMapper());
    }
}

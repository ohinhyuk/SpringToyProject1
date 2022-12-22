package com.example;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardRowMapper implements RowMapper<BoardVO>{
    @Override
    public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        BoardVO vo = new BoardVO();
        vo.setSid(rs.getInt("sid"));
        vo.setName(rs.getString("name"));
        vo.setGender(rs.getString("gender"));
        vo.setRegdate(rs.getDate("regdate"));
        return vo;
    }
}

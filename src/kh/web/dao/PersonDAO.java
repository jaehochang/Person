package kh.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kh.web.dbutils.DBUtils;
import kh.web.dto.PersonDTO;

public class PersonDAO {
	public int insertData(PersonDTO dto) throws Exception {

		Connection con = DBUtils.getConnection();
		String sql = "insert into person values(person_seq.nextval,?,?,?)";
		PreparedStatement pstat = con.prepareStatement(sql);

		pstat.setString(1, dto.getName());
		pstat.setString(2, dto.getPhone());
		pstat.setString(3, dto.getEmail());

		int result = pstat.executeUpdate();

		pstat.close();
		con.commit();
		con.close();

		return result;
	}

	public List<PersonDTO> printData() throws Exception {

		Connection con = DBUtils.getConnection();
		String sql = "select * from person";
		PreparedStatement pstat = con.prepareStatement(sql);

		ResultSet rs = pstat.executeQuery();

		List<PersonDTO> result = new ArrayList<PersonDTO>();

		while (rs.next()) {
			result.add(new PersonDTO(rs.getInt("" + ("seq")), rs.getString("name"), rs.getString("tel"),
					rs.getString("email")));
		}

		rs.close();
		pstat.close();
		con.close();

		return result;
	}
}

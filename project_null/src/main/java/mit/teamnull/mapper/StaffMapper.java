package mit.teamnull.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import mit.teamnull.domain.StaffVO;

public interface StaffMapper {
	
	//@Select("SELECT * FROM staff WHERE ROWNUM > 0")
	public List<StaffVO> list();
	
	   //로그인 하기
	   public Integer login(@Param("staff_name") String staff_name, 
	         @Param("staff_depart") String staff_depart);
	
}

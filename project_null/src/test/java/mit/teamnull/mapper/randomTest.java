package mit.teamnull.mapper;

import java.util.Random;

import org.junit.Test;

public class randomTest {
	@Test
	public void test1()  {

        Random rd = new Random();//랜덤 객체 생성

        StringBuffer bf= new StringBuffer();
        		
        for(int i=0;i<6;i++){
            if(rd.nextBoolean()){
            	bf.append((char)((int)(rd.nextInt(26))+65));
            }else{
            	bf.append((rd.nextInt(10)));
            }
        }
        System.out.println("---------------------------");
        System.out.println("ITEM-"+bf);



    }

//	@Test
//	public void test2{
//		
//		Random rd = new Random();
//
//		StringBuffer bf = new StringBuffer();
//
//		for (int i = 0; i < 1; i++) {
//			if (rd.nextBoolean()) {
//				bf.append((char) ((int) (rd.nextInt(26)) + 65));
//				
//			} else {
//				bf.append((rd.nextInt(10)));
//			}
//		}
//		
//		while (bf.toString()=="1") {
//			for (int i = 0; i < 6; i++) {
//				if (rd.nextBoolean()) {
//					bf.append((char) ((int) (rd.nextInt(26)) + 65));
//				} else {
//					bf.append((rd.nextInt(10)));
//				}
//			}
//		}
//		
//
//	}
}
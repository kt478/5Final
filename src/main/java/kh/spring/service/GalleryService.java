package kh.spring.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import kh.spring.dao.GalleryDAO;
import kh.spring.dao.Gallery_ImgDAO;
import kh.spring.dto.GalleryDTO;
import kh.spring.dto.Gallery_ImgDTO;




@Service
public class GalleryService {
	
	
	@Autowired
	private GalleryDAO dao;

	@Autowired
	private HttpSession session;

	@Autowired
	private Gallery_ImgDAO fdao;
	
	
	public int delete(int seq) {
		return dao.delete(seq);
	}
	public List<GalleryDTO> selectAll()throws Exception{
		return dao.List(); 
	}
	
	public int selectRating()throws Exception{
		return dao.Rating(); 
	}

	public void modify(String title,String contents,String realPath, MultipartFile[] file,int rating,int seq,String [] delTargets)throws Exception {
		

		System.out.println("여기까지 넘어오나?");
		Map<String,String> param = new HashMap<>();
		param.put("rating", String.valueOf(rating));
		param.put("seq", String.valueOf(seq));
		param.put("title", title);
		param.put("contents", contents);
		
		System.out.println("modify"+seq);
		dao.modify(param);


		File filesPath = new File(realPath);

		if(delTargets != null) {


			for(String target : delTargets) {
				
				System.out.println("타켓 번호"+target);
				String sysName = fdao.getSysName(Integer.parseInt(target));
				File targetFile = new File(filesPath+"/"+sysName);
				boolean result = targetFile.delete();
				

     			if(result) {fdao.fileDelete(Integer.parseInt(target));}


			}
			
			
			
			
			
		}
		
		for(MultipartFile tmp : file) {

			
			if(tmp.getSize() > 0) {
				String oriName = tmp.getOriginalFilename();
				String sysName = UUID.randomUUID().toString().replaceAll("-", "")+"_"+oriName;


				tmp.transferTo(new File(filesPath.getAbsolutePath()+"/"+sysName));
				
				Gallery_ImgDTO fdto = new Gallery_ImgDTO(0,oriName, sysName,seq);

				if(oriName!=null) {
					System.out.println("파일 이름" + oriName +"DB에 저장됨.");
					fdao.filesInsert(fdto);
				}


			}

		}


	}
	
	public void modify2(String title,String contents,String realPath, MultipartFile[] file,int rating,int seq)throws Exception {
		

		System.out.println("여기까지 넘어오나?");
		Map<String,String> param = new HashMap<>();
		param.put("rating", String.valueOf(rating));
		param.put("seq", String.valueOf(seq));
		param.put("title", title);
		param.put("contents", contents);
		
		System.out.println("modify"+seq);
		dao.modify(param);


		File filesPath = new File(realPath);

		
		for(MultipartFile tmp : file) {

			
			if(tmp.getSize() > 0) {
				String oriName = tmp.getOriginalFilename();
				String sysName = UUID.randomUUID().toString().replaceAll("-", "")+"_"+oriName;


				tmp.transferTo(new File(filesPath.getAbsolutePath()+"/"+sysName));
				
				Gallery_ImgDTO fdto = new Gallery_ImgDTO(0,oriName, sysName,seq);

				if(oriName!=null) {
					System.out.println("파일 이름" + oriName +"DB에 저장됨.");
					fdao.filesInsert(fdto);
				}


			}

		}


	}
	
	
	public void modify3(String title,String contents,int rating,int seq)throws Exception {
		

		System.out.println("여기까지 넘어오나?");
		Map<String,String> param = new HashMap<>();
		param.put("rating", String.valueOf(rating));
		param.put("seq", String.valueOf(seq));
		param.put("title", title);
		param.put("contents", contents);
		
		System.out.println("modify"+seq);
		dao.modify(param);


	}
	
	
	
	
	@Transactional
	public void insert(String title,String contents,String realPath, MultipartFile[] file,int rating) throws Exception {

		
		String writer = (String)session.getAttribute("loginID");
		System.out.println(writer);
		Map<String,String> param = new HashMap<>();
		param.put("rating", String.valueOf(rating));
		param.put("writer", writer);
		param.put("title", title);
		param.put("contents", contents);
		
		
		dao.insert(param);
		
		System.out.println(realPath);

		File filesPath = new File(realPath);
		if(!filesPath.exists()) {
			filesPath.mkdir();
		}


		for(MultipartFile tmp : file) {

			int seq = dao.getSeq();
			if(tmp.getSize() > 0) {
				String oriName = tmp.getOriginalFilename();
				String sysName = UUID.randomUUID().toString().replaceAll("-", "")+"_"+oriName;


				tmp.transferTo(new File(filesPath.getAbsolutePath()+"/"+sysName));
				
				Gallery_ImgDTO fdto = new Gallery_ImgDTO(0,oriName, sysName,seq);

				if(oriName!=null) {
					System.out.println("파일 이름" + oriName +"DB에 저장됨.");
					fdao.filesInsert(fdto);
				}


			}

		}

		
		
	}

	public int CountBoard() {
		return dao.CountBoard();
	}

	public int getSeq() {

		return dao.getSeq(); 
	}



	public GalleryDTO detail(int seq) throws Exception {
		
		
		return dao.detail(seq);
	}

	
	public GalleryDTO search(int seq) throws Exception {
		
		
		return dao.search(seq);
	}
	
	
	
	
	
	
	public List<GalleryDTO> ThumbPath(Map<String,Object> param1) throws Exception{
			List<GalleryDTO> list = this.getPageList(param1);
			for(GalleryDTO gdto : list) {
				Gallery_ImgDTO idto = fdao.selectThumbBySeq(gdto.getSeq());
				gdto.setThumbPath(idto.getSysName());
			}
			return list;
	}
	
	
	public List<GalleryDTO> getPageList(Map<String,Object> param1) throws Exception{
		
		System.out.println(param1);
		return dao.getPageList(param1);
		
	}
	
	public List<GalleryDTO> getPageList2(Map<String,Object> param2) throws Exception{
		
		System.out.println(param2);
		return dao.getPageList2(param2);
		
	}
	

// 서비스에는 web티어 인자는 적지않는다.
	
	

}

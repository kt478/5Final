package kh.spring.service;

import java.io.File;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import kh.spring.dao.ProductsDAO;
import kh.spring.dao.SummerDAO;
import kh.spring.dto.ProductsDTO;
import kh.spring.dto.SummerDTO;

@Service
public class ProductsService {

	@Autowired
	private ProductsDAO dao;

	@Autowired
	private SummerDAO sdao;

	@Transactional
	public void insert(ProductsDTO dto,int p_seq,MultipartFile[] file,String realPath)throws Exception {
		DecimalFormat df = new DecimalFormat("#,###");
		dto.setP_price(Integer.parseInt(df.format(dto.getP_price())));
		dao.insert(dto);
		
		File filesPath = new File(realPath);
		if(!filesPath.exists()) { filesPath.mkdir(); }
		for(MultipartFile tmp : file) { 
				String oriName = tmp.getOriginalFilename();
				String sysName = UUID.randomUUID().toString().replaceAll("-", "")+"_"+oriName;
				
				System.out.println(oriName+" : "+sysName+" : "+ p_seq);
				
				if(sdao.insert(new SummerDTO(0,oriName,sysName, p_seq))>0) {
					tmp.transferTo(new File(filesPath.getAbsolutePath()+"/"+sysName));
				
			}
		}
	}

	public List<ProductsDTO> selectAll(int startNum,int endNum) {
		Map<String,Object> param = new HashMap<>();
		param.put("startNum",startNum);
		param.put("endNum",endNum);
		return dao.selectAll(param);
	}

	public ProductsDTO detail(int p_seq) {
		return dao.detail(p_seq);
	}

	public int delete(int p_seq) {
		return dao.delete(p_seq);
	}
	
	public List<SummerDTO> filesBySeq(int s_seq) {
		return sdao.filesBySeq(s_seq);
	}
	
	public int getP_seq() {
		return dao.getPseq();
	}

	public List<ProductsDTO> Thumbnail(int startNum,int endNum) {
		List<ProductsDTO> list = this.selectAll(startNum,endNum);
		for(ProductsDTO dto : list) {
			SummerDTO sdto = sdao.selectThumbBySeq(dto.getP_seq());
			dto.setThumsysName(sdto.getSysName());

			if(dto.getP_name().length()>14) {
				String subName = dto.getP_name().substring(0, 14)+"...";
				dto.setP_name(subName);
			}
		}
		return list;

	}
	
//	public List<ProductsDTO> pList(String camp_id){
//		List<ProductsDTO> list = dao.pList(camp_id);
//		for(ProductsDTO dto : list) {
//			SummerDTO sdto = sdao.selectThumbBySeq(dto.getP_seq());
//			dto.setThumsysName(sdto.getSysName());
//			
//			
//			if(dto.getP_name().length()>14) {
//				String subName = dto.getP_name().substring(0, 12)+"...";
//				dto.setP_name((subName));
//			}
//		}
//		return list;
//	}

}

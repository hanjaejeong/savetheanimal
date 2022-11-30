package kr.animal.entity;

public class Post {
	
	// 1. 정보은닉(private)
	private int post_num;
	private String post_title;
	private String post_contents;
	private int post_mem_num;
	private String post_cate_code;

	
	// 2. 멤버변수(=프로퍼티(property))
	public int getPost_num() {
		return post_num;
	}
	public void setPost_num(int post_num) {
		this.post_num = post_num;
	}
	public String getPost_title() {
		return post_title;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public String getPost_contents() {
		return post_contents;
	}
	public void setPost_contents(String post_contents) {
		this.post_contents = post_contents;
	}
	public int getPost_mem_num() {
		return post_mem_num;
	}
	public void setPost_mem_num(int post_mem_num) {
		this.post_mem_num = post_mem_num;
	}
	public String getPost_cate_code() {
		return post_cate_code;
	}
	public void setPost_cate_code(String post_cate_code) {
		this.post_cate_code = post_cate_code;
	}


	
	// 3. 생성자 메소드
	
	// 전체 생성자
	public Post(int post_num, String post_title, String post_contents, int post_mem_num, String post_cate_code) {
		super();
		this.post_num = post_num;
		this.post_title = post_title;
		this.post_contents = post_contents;
		this.post_mem_num = post_mem_num;
		this.post_cate_code = post_cate_code;
	}

	
	//게시글 등록/조회용 생성자
	public Post(String post_title, String post_contents, int post_mem_num, String post_cate_code) {
		super();
		this.post_title = post_title;
		this.post_contents = post_contents;
		this.post_mem_num = post_mem_num;
		this.post_cate_code = post_cate_code;
	}
	
	//4. ToString
	@Override
	public String toString() {
		return "Post [post_num=" + post_num + ", post_title=" + post_title + ", post_contents=" + post_contents
				+ ", post_mem_num=" + post_mem_num + ", post_cate_code=" + post_cate_code + "]";
	}
	
	
	
}
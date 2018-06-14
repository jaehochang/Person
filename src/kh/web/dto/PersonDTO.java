package kh.web.dto;

public class PersonDTO {
	int seq;
	private String name;
	private String phone;
	private String email;

	public PersonDTO(int seq, String name, String phone, String email) {
		super();
		this.seq = seq;
		this.name = name;
		this.phone = phone;
		this.email = email;
	}

	public PersonDTO(String name2, String phone2, String email2) {
		// TODO Auto-generated constructor stub
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
package jspexp.a04_member;

public class memberVO {
	private String memberId;
	private String memberPass;
	private String memberName;
	private String memberAuth;
	private int memberPoint;
	public memberVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public memberVO(String memberId, String memberPass, String memberName, String memberAuth, int memberPoint) {
		super();
		this.memberId = memberId;
		this.memberPass = memberPass;
		this.memberName = memberName;
		this.memberAuth = memberAuth;
		this.memberPoint = memberPoint;
	}
	public memberVO(String memberId, String memberPass, String memberName) {
		super();
		this.memberId = memberId;
		this.memberPass = memberPass;
		this.memberName = memberName;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPass() {
		return memberPass;
	}
	public void setMemberPass(String memberPass) {
		this.memberPass = memberPass;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberAuth() {
		return memberAuth;
	}
	public void setMemberAuth(String memberAuth) {
		this.memberAuth = memberAuth;
	}
	public int getMemberPoint() {
		return memberPoint;
	}
	public void setMemberPoint(int memberPoint) {
		this.memberPoint = memberPoint;
	}
	

}

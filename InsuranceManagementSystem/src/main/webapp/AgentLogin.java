package com.infinite.ins;




	import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.Id;
	import javax.persistence.Table;

	@Entity
	@Table(name="agentlogin")
	public class AgentLogin {

		@Id
		@Column(name="userName")
		private String userName;
		
		@Column(name="passWord")
		private String passWord;
		
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getPassWord() {
			return passWord;
		}
		public void setPassWord(String passWord) {
			this.passWord = passWord;
		}
		
		
	}





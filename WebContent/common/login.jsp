<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- �˾� �� ���̾� --> 
<div class="modal"> 
   <div id="form-wrap">
      <span class="close-button">&times;</span>
      <h1 id="login_title" class="title">Log in</h1>
      <!-- ��ư -->
       <div class="button-wrap">
           <div id="btn"></div>
           <button type="button" class="togglebtn1" onclick="login()">�α���</button>
           <button type="button" class="togglebtn2" onclick="register()">ȸ������</button>
       </div>
       <!-- //��ư -->
   
       <!-- �α��� -->
       <form id="login" action="LogIn.go" class="input-group" method="post">
           <input type="text" id="sign_id" name="sign_id" class="input-field" placeholder="���̵�">
           <input type="password" id="sign_pwd" name="sign_pwd" class="input-field" placeholder="��й�ȣ">
           <button class="submit">�α���</button>
       </form>
       <!-- //�α��� -->
   
      <h1 id="register_title" class="title">Sign Up</h1>
       <!-- ȸ������ -->
       <form id="register" action="SignUp.go" class="input-group" method="post">
            <input type="text" name="userid" id="userid" class="input-field" placeholder="���̵�">
            <span id="guide"></span>
            <input type="password" name="pwd" id="pwd" class="input-field" placeholder="��й�ȣ">
            <input type="password" id="pwdcheck" class="input-field" placeholder="��й�ȣ Ȯ��">
            
            <p class="birthday">�������:</p>
            <select id="birthYYYY" name="birthYYYY" >
               <option value="empty">���� �Է�</option>
            </select>
            <label for="birthYYYY">��</label>
            
            <select id="birthMM" name="birthMM" disabled>
               <option value="empty">�� �Է�</option>
            </select>
            <label for="birthMM">��</label>
            
            <select id="birthDD" name="birthDD" disabled>
            </select>
            <label for="birthDD">��</label>
            
            <input type="text" name="email" id="email" class="input-field" placeholder="�̸���">
            <input type="submit" class="submit" value="ȸ������">
       </form>
       <!-- //ȸ������ -->
   </div>
</div>
<!-- //�˾� �� ���̾� --> 
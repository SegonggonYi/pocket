<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<html>
<head>
    <!-- jQuery-->
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>

    <script>
        function checkjoin() {
            if ($.trim($("#id").val()) == "") {
                alert("아이디를 입력하세요!");
                $("#id").val("").focus();
                return false;
            }
            if ($.trim($("#passwd").val()) == "") {
                alert("비밀번호를 입력하세요!");
                $("#passwd").val("").focus();
                return false;
            }
        }
    </script>

    <title>Title</title>
</head>
<body>

<table>
    <form name="form" method="post" action="/join" onsubmit="return checkjoin()">
        <tr>
            <th> 아이디 </th>
            <td> <input type="id" name="id" id="id"> </td>
        </tr>
        <tr>
            <th> 비밀번호 </th>
            <td> <input type="password" name ="passwd" id="passwd"> </td>
        </tr>
        <tr>
            <th> 이름 </th>
            <td> <input type="text" id="name" name="name" ></td>
        </tr>

        <tr>
            <th> 주소 </th>
            <td> <input type="text" id="addr" name="addr"> </td>
        </tr>
        <tr>
            <th> 상세주소 </th>
            <td> <input type="text" id="addr2" name="addr2"> </td>
        </tr>
        <tr>
            <th> 우편번호 </th>
            <td> <input type="number" id="post" name="post" > </td>
        </tr>
        <tr>
            <th> 휴대전화 </th>
            <td> <select name="phone1" id="phone1" name="phone1">
                <option value="010">010</option>
                <option value="011">011</option>
                <option value="012">012</option>
                <option value="016">016</option>
            </select>
            </td>
                <td>
            -<input type="number" id="phone2" name="phone2">-
                </td>
                <td>
                <input type="number" id="phone3" name="phone3">
            </td>
        </tr>
        <tr>
            <th> 이메일 </th>
            <td> <input type="text" id="email1" name="email1"> </td>
            <td> @
                <select name="email2" id="email2" class="form-select-button">
                <option value="">이메일 선택</option>
                <option value="naver.com">naver.com</option>
                <option value="nate.com">nate.com</option>
                <option value="daum.net">daum.net</option>
                <option value="gmail.com">gmail.com</option>
            </select>
            </td>
        </tr>
        <tr>
            <th>자기소개</th>
            <td> <textarea type="text" id="conm" name="conm"></textarea></td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="회원가입"/>
            </td>
            <td>
                <input type="reset" value="취소"/>
            </td>
        </tr>
    </form>
</table>
</body>

</html>

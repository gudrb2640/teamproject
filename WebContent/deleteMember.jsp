<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Ż��ȭ��</title>
</head>
<body>
	<script>
		$("#pw2")
				.blur(
						function() {
							var pw2 = $(this).val();
							$
									.ajax({
										type : "post",
										async : true,
										url : contextPath + "/Updatecheck",
										data : {
											param : pw2,
											command : "pw",
											member_num : member_num
										},
										dataType : "text",
										success : function(data) {
											if (data == "1") {
												$("#pw2_check")
														.html(
																"<svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-check' viewBox='0 0 16 16'><path d='M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z'/></svg>");
												$("#pw2_check2").text("");
												$("#pw2_btn").removeAttr(
														"disabled");
												$("#pw2")
														.attr("disabled", true);
											} else {
												$("#pw2_check2").text(data);
												$("#pw2_check").text("");
											}
										}
									});
						});
		$("#pw2_btn").click(function() {
			if (confirm("Ż���Ͻðڽ��ϱ�?")) {
				$("#form").attr("action", "MemberDeleteAction").submit();
			} else {
				$("#pw2_btn").attr("disabled", true);
				$("#pw2").removeAttr("disabled");
				$("#pw2").val("");
				$("#pw2_check2").text("");
				$("#pw2_check").text("");
			}
		});
		<script type="text/javascript">
		// ��й�ȣ ���Է½� ���â
		function checkValue() {
			if (!document.deleteForm.password.value) {
				alert("��й�ȣ�� �Է����� �ʾҽ��ϴ�.");
				return false;
			}
		}
	</script>
</head>
<body>

	<table style="margin-left: auto; margin-right: auto; margin-top: 300px">
		<tr>
			<p style="font-size: 30; color: gray;">ȸ��Ż��</p>
			<td>
				<div>
					<p>
						<input type="password" id="pw2" name="pw2" /> <span
							id="pw2_check" class="check2"></span> <br> <span
							id="pw2_check2" class="check"></span>
					</p>
					<p class="contxt_desc">��й�ȣ�� �Է��ؾ� ȸ��Ż�� �����մϴ�.</p>
					<input type="button" id="pw2_btn" value="ȸ��Ż��" disabled="disabled">
				</div>
			</td>
		</tr>
	</table>

</body>
</html>
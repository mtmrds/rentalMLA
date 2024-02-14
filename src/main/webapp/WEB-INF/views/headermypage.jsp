
<div class="linkpage">
	<!-- ログインしていない場合はログインページへのリンクを表示 -->
	<c:if test="${empty loginModel.name}">
		<a href="login" alt="ログイン" class="btn-img">
		<img src="resources/image/人間アイコン3.png" width="40" height="auto">ログイン
		</a>
	</c:if>

	<!-- ログインしている場合はマイページへのリンクを表示 -->
	<c:if test="${!empty loginModel.name}">
		<a href="mypage" alt="マイページ" class="btn-img">
		<img src="resources/image/人間アイコン3.png" width="40" height="auto">マイページ
		</a>
	</c:if>

	<a href="cart" class="btn-img">
		<img src="resources/image/カート.png" width= "60"height= "auto">カート</a>
		<a href="b"class="btn-img">
		<img src="resources/image/メモのアイコン3.png" width="50"height="auto">履歴管理</a>　
</div>


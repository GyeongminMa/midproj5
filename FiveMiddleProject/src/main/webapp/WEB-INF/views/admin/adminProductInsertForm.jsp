<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>CKEditor 5 – Classic editor</title>
<script
	src="https://cdn.ckeditor.com/ckeditor5/31.1.0/classic/ckeditor.js"></script>

	<style type="text/css">
	.col-10 {display: inline-block; font-size: large;}
	
	</style>
</head>
<body>
	<br><br><br><br><br><br>
	<div class="container">
		<div class="row">
			<div class="col-10"  >
				<h1 >강의 등록</h1>
				<br> <label style="display:block;font-size: large; ">강의명
				<input type="text" class="form-control" id="productName" name="productName" width="800px" placeholder="강의명을 입력하세요.">
				</label>
				
				<label style="display:block;font-size: large; ">강의 한줄 설명
				<input type="text" class="form-control" id="productExplain" name="productExplain" width="800px" placeholder="강의 한줄 설명을 입력하세요.">
				</label>
				<label style="display:inline-block; ;font-size: large; ">강사명
				<input type="text" class="form-control" id="productTrainer" name="productTrainer" width="800px" placeholder="강의명을 입력하세요.">
				</label>
				<label style="display:inline-block; ;font-size: large; ">수강 기간
				<input type="text" class="form-control" id="productDate" name="productDate" width="800px" placeholder="수강기간을 입력하세요.">
				</label>
				<label style="display:inline-block; ;font-size: large; ">강의 가격
				<input type="text" class="form-control" id="productPrice" name="productPrice" width="800px" placeholder="강의 가격을 입력하세요.">
				</label>
				<br><br>
				<div id="editor" style="height: 30px">
					<p>내용을 입력해 주세요.</p>
				</div>

				<div class="row justify-content-md-center"></div>
				<div class="custom-file">
					&nbsp;<label>강의 썸네일 사진
					<input type="file" class="form-control-file"
						id="exampleFormControlFile1"></label>
						&nbsp;<input type="file" class="form-control-file"
						id="exampleFormControlFile2">

				</div>
			</div>
		</div>

		<script>
    ClassicEditor
      .create( document.querySelector( '#editor' ) )
      .catch( error => {
        console.error( error );
      } );
  </script>


	</div>

	<div class="row justify-content-md-center">
		<button type="submit" class="btn btn-outline-secondary"
			style="width: 20%; font-weight: bold">등 록</button>
	</div>
	<br>
	<br>
</body>
</html>
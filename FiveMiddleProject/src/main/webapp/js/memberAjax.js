/**
 * memberAjax.js
 */

// 회원정보수정 페이지 출력
// function EditForm() {
//     fetch('memberEditForm.do')
//     .then((result) => result.json())
//     .then((data) => {
//         console.log(data)
//     })
//     .catch(err => console.log(err))
// }







// '바로 실행되는 코드들(init에 다 넣어놨음)은 html 페이지가 다 실행된 후에 실행하세요' 라는 이벤트를 넣어줘야 함!
// 함수는 호출됐을때 실행되니까 관계없음
document.addEventListener('DOMContentLoaded', init);

function init() {
    // 데이터 수정
    document.querySelector('form[id=memberFrm]').addEventListener('submit', updateMember);
}

function updateMember(e) {
    e.preventDefault();
    // 수정 버튼 눌렀을 때 비밀번호, 닉네임 찾아오기
    let memberId = document.getElementById('memberId').value;
    let password = document.getElementById('memberPassword').value;
    let nickname = document.getElementById('memberNickname').value;

    fetch('memberUpdate.do', {
        method: 'post',
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: 'memberId=' + memberId + '&memberPassword=' + password + '&memberNickname=' + nickname
    })
    .then(result => result.json())
    .then(result => {
        console.log(result)
        alert("회원정보가 수정되었습니다.")

        // document.getElementById('memberPassword').replaceWith(result.memberPassword);
        document.getElementById('memberNickname').replaceWith(result.memberNickname);
    })
    .catch(err => console.log(err))
}
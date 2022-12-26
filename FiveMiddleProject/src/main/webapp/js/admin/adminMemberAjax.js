/**
 * 
 */

console.log("1");

const showFields = {
    memberId: "아이디",
    memberName: "이름",
    memberNickname: "닉네임",
    memberGender: "성별",
    memberBirth: "생년월일",
    memberPhone: "전화번호"
};

//▼ JAVA연결 : List 데이터 가져오기
fetch('ajaxAdminMemberList.do')
    .then((result) => result.json())
    .then(function (dataList) {
        // console.log(data);

        //▼ 리스트 출력
        makeTable(dataList);

        //▼ tr이벤트 : 수강강좌 목록 출력
        TrEvent();

        //▼ 선택삭제
        document.getElementById('delBtn').addEventListener('click', delMembers)

    })
    .catch(error => console.log(error))

//▼ 리스트 출력 메소드
function makeTable(dataList = []) {
    let tbl = document.getElementById('dataTable');
    let tbd = document.createElement('tbody');

    // let fields = showFields;
    // console.log(ths);

    // //thead만들기
    // for (let field in showFields) {
    //     let th = document.createElement('th');
    //     // console.log(fields[field]);
    //     th.innerText = fields[field];
    //     console.log(th);
    //     tr.append(th);
    // }


    for (const data of dataList) {
        // console.log(data);
        tbd.append(makeTr(data));
    }
    tbl.append(tbd);

}

//▼ tbody > tr 만들기
function makeTr(data) {
    let tr = document.createElement('tr');
    let th = document.querySelector('thead th');
    // console.log(data);

    for (let i = 1; i < 7; i++) {
        if (i == 1) {
            let newTh = document.createElement('th');
            newTh = th.cloneNode(true);
            tr.setAttribute('id', data.memberId);
            tr.append(newTh)
            // console.log(newTh)
        }
        // console.log(data.i);
        for (let j in data) {
            if (j != 'memberPassword' && j != 'memberRole') {
                let td = document.createElement('td');
                td.innerText = data[j];
                tr.append(td);

            }
        }
        console.log(tr.id);
        return tr;
    }
}

//▼ 회원 강좌목록 출력 이벤트 
function TrEvent() {
    let trs = document.querySelectorAll('tbody tr');
    console.log(trs)
    for (let tr of trs) {
        tr.addEventListener('click', showDetail)
    }
}

//▼ 회원 강좌목록 출력 메소드ㅠㅠ
function showDetail() {
    console.log('강좌목록 출력하기');
}

//▼ 회원삭제
function delMembers() {
    let checkeds = document.querySelectorAll('tbody input[type="checkbox"]:checked');
    for (let ck in checkeds) {
        // console.log(checkeds[ck].parentElement.parentElement.parentElement)
        let memberId = checkeds[ck].parentElement.parentElement.parentElement.getAttribute('id');
        // console.log(memberId);
        removeFetch(memberId);
    }
}
//▼ 회원삭제 처리(자바연결)
function removeFetch(memberId) {
    console.log("리무브패치까지 왔음")
    fetch('adminDel.do', {
            method: 'post',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: 'memberId=' + memberId
        })
        .then(result => result.json())
        .then(result => {
            if (result.retCode == 'Success') {
                document.querySelector('#' + result.memberId).remove();
                alert('회원 삭제가 정상적으로 처리되었습니다.')
            } else if (result.retCode == 'Fail') {
                alert('[삭제 실패] 처리 중 오류가 발생하였습니다.')
            }
        })
        .catch(error => console.log(error))
}
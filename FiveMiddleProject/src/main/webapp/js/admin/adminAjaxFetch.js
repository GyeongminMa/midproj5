/**
 * 
 */

console.log("35");

const showFields = {
    memberId: "아이디",
    memberName: "이름",
    memberNickname: "닉네임",
    memberGender: "성별",
    memberBirth: "생년월일",
    memberPhone: "전화번호"
};

fetch('adminMemberList.do')
    .then((result) => result.json())
    .then(function (dataList) {
        // console.log(data);
        makeTable(dataList);
    })
    .catch(error => console.log(error))

function makeTable(dataList = []) {
    let tbl = document.getElementById('dataTable');
    let tbd = document.createElement('tbody');

    let thead = document.createElement('thead')
    let ths = document.querySelectorAll('#thead tr th');
    let tr = document.createElement('tr');

    let fields = showFields;
    // console.log(ths);

    for (let field in showFields) {
        let th = document.createElement('th');
        // console.log(fields[field]);
        th.innerText = fields[field];
        console.log(th);
        tr.append(th);
    }
    for (const data of dataList) {
        console.log(data);
        tbd.append(makeTr(data));
    }
    thead.append(tr);
    tbl.append(tbd);
    tbl.append(thead);
}

function makeTr(data) {
    console.log(data);
    let tr = document.createElement('tr');
    for (let field in showFields) {
        console.log(field);
        let td = document.createElement('td');
        td.innerText = data[field];
        tr.append(td);
        console.log(tr);
    }
    return tr;
}
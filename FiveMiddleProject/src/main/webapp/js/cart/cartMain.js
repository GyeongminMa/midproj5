/**
 * 
 */
console.log("13333");


//▶ JAVA 연결 : LIST 데이터 가져오기
fetch('ajaxCartList.do')
    .then((result) => result.json())
    .then(function (dataList) {
        //▶ 리스트 출력
        makeTbd(dataList);

        //▶ 선택삭제

    })



//▶ tbody만들기
function makeTbd(dataList = []) {
    let tbd = document.querySelector('.table tbody');
    for (const data of dataList) {
        console.log('▶ makeTable')
        console.log(data);
        tbd.append(makeTr(data));
    }
}

//▶ tbody에 붙일 tr(상품 하나하나) 만들기
function makeTr(data) {
    //▷ tr만들기
    let tr = document.createElement('tr');
    tr.className = 'alert';
    tr.setAttribute('role', 'alert');


    // let thumbNailUrl = data[0].thumbNailUrl;
    // console.log(thumbNailUrl);
    for (let i = 1; i < 10; i++) {
        if (i == 1) {
            let td = document.createElement('td');
            let label = document.createElement('label');
            label.className = 'checkbox-wrap checkbox-primary';

            let input = document.createElement('input');
            input.type = 'checkbox';
            input.checked = true;

            let span = document.createElement('span');
            span.className = 'checkmark';
            label.append(input);
            label.append(span);
            td.append(label);
            console.log(td);
        }
        if(i==2){
            let td = createElement('td');
            let div = createElement('div');
            div.className='img';
            div.setAttribute('style',data[8]);

        }
    }






    //▷ td만들기
    let td = document.createElement('td');
    let label = document.createElement('label');
    console.log(td);

}
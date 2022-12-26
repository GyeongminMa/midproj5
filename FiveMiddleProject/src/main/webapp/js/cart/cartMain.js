/**
 * 
 */
console.log("43");


//▶ JAVA 연결 : LIST 데이터 가져오기
fetch('ajaxCartList.do')
    .then((result) => result.json())
    .then(function (dataList) {
        //▶ 리스트 출력
        makeTbd(dataList);

        //▶ 전체삭제
        document.getElementById('deleteAll').addEventListener('click', delAll);
    })

//▶ tbody만들기
function makeTbd(dataList = []) {
    let tbd = document.querySelector('.table tbody');
    for (const data of dataList) {
        console.log('▶ makeTable')
        // console.log(data);
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
    for (let i = 1; i < 6; i++) {
        //1. 체크박스
        let td = document.createElement('td');
        if (i == 1) {
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
            tr.append(td);
        }

        // 2. 썸네일
        else if (i == 2) {
            // let td = document.createElement('td');
            let div = document.createElement('div');
            div.className = 'img';
            td.append(div);
            div.style.backgroundImage = data.productThumbnailUrl;
            tr.append(td);
        }

        //3. 상품제목 + 한줄설명
        else if (i == 3) {
            // let td = document.createElement('td');
            let div = document.createElement('div');
            div.className = 'email';
            // console.log(div);
            let span1 = document.createElement('span');
            span1.innerText = data.productName;
            div.append(span1);

            let span2 = document.createElement('span');
            span2.innerText = data.productExplain;
            div.append(span2);
            td.append(div);
            tr.append(td);
            // console.log(span);
        }
        //4. 가격
        else if (i == 4) {
            // let td = document.createElement('td');
            td.innerText = data.productPrice;
            tr.append(td);
        }

        //5. 삭제버튼
        else if (i == 5) {
            // let td = document.createElement('td');
            // let delBtn = document.querySelector('.close').cloneNode(true);

            let delBtn = document.createElement('button');
            delBtn.className = 'close';
            delBtn.id = 'delBtn';
            delBtn.setAttribute('data-dismiss', 'alert');
            delBtn.ariaLabel = 'Close';

            let span = document.createElement('span');
            span.ariaHidden = 'true';

            let i = document.createElement('i');
            i.className = 'fa fa-close';

            span.append(i);
            delBtn.append(span);
            td.append(delBtn);
            tr.append(td);

            tr.setAttribute('id', data.cartNum);
            return tr;
        }
    }
}


//▶ 장바구니 선택 삭제 메소드
function delAll(p) {
    p.preventDefault();
    // console.log('실행되는거니..');
    let checkeds = document.querySelectorAll('tbody input[type="checkbox"]:checked');
    for (let ck in checkeds) {
        let cartNum = checkeds[ck].parentElement.parentElement.parentElement.getAttribute('id');
        delFetch(cartNum);
    }
}

//▶ 장바구니 삭제 fetch문
function delFetch(cartNum) {
    fetch('ajaxCartDelete.do', {
            method: 'post',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: 'cartNum=' + cartNum
        })
        .then(result => result.json())
        .then(result => {
            if (result.retCode == 'Success') {
                document.getElementById(result.cartNum).remove();
                alert('장바구니가 정상적으로 삭제되었습니다.')
            } else if (result.retCode == 'Fail') {
                alert('[삭제 실패] 처리 중 오류가 발생하였습니다.')
            }
        })
        .catch(error => console.log(error))
}
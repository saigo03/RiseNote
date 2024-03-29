document.addEventListener("turbo:load", function() {
  var textarea = document.getElementById('memo_content');

  var templates = {
    'clear_textarea': '',
    'insert_text2': `
1 . コード貼り付け
-----------------------------------------



2 . コードの詳細
-----------------------------------------




-----------------------------------------
参考Link : 

`,
    'insert_text3': `1 . エラー概要(コード貼り付け)
-----------------------------------------



2 . エラー詳細
-----------------------------------------



3 . 原因
-----------------------------------------



4 . 解決策
-----------------------------------------



-----------------------------------------
参考Link : 

`};

  // モーダル内のボタンにイベントリスナーを設定
  document.querySelectorAll('#templateModal .btn').forEach(function(button) {
    button.addEventListener('click', function() {
      var templateType = button.getAttribute('data-template-type');
      if (templateType === 'clear_textarea') {
        textarea.value = ''; // テキストエリアを完全にクリア
      } else if (templates[templateType]) {
        textarea.value += templates[templateType];
      }
      $('#templateModal').modal('hide'); // モーダルを閉じる
    });
  });

    //メモ用のjsファイルに記述しているが他のところに書くべきである。
    //application.jsだと処理が上手くいかないためとりあえず記述している
    //それぞれページに必要な部分だけjsを呼び出せるように修正が必要な可能性がある
    // フラッシュメッセージを自動で削除する
    const flashMessages = document.querySelectorAll('.alert');
  
    flashMessages.forEach(flashMessage => {
      // 3秒後にフラッシュメッセージをフェードアウト
      setTimeout(() => {
        flashMessage.style.transition = 'opacity 0.5s ease-in-out';
        flashMessage.style.opacity = '0';
      }, 2000);
  
      // 完全に非表示にする
      setTimeout(() => {
        flashMessage.remove();
      }, 2500);
    });
});
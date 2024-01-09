document.addEventListener("turbo:load", function() {
  var menu = document.getElementById('custom-context-menu');
  var deleteFolderButton = document.getElementById('delete-folder');
  var deleteButton = document.getElementById('delete-memo');

  // 右クリックでメモの削除
  if (menu && deleteButton) {
    document.querySelectorAll('.folder-group-item').forEach(function (memo) {
      memo.addEventListener('contextmenu', function (e) {
        e.preventDefault();

        //選択されたメモを調べるためにIDを取得する必要がある
        // 選択されたメモのIDを取得
        var memoId = memo.getAttribute('data-memo-id');
        var folderId = memo.closest('.folder-group').getAttribute('data-folder-id');

        // 削除リンクのhref属性を更新
        deleteButton.href = `/folders/${folderId}/memos/${memoId}`;
        deleteButton.setAttribute('data-turbo-method', 'delete');
        deleteButton.setAttribute('data-turbo-confirm', '削除してよろしいですか？');

        menu.style.top = e.pageY + 'px';
        menu.style.left = e.pageX + 'px';
        menu.classList.remove('d-none');
      });
    });

    //２回目のクリックでメニューを削除
    document.addEventListener('click', function (e) {
      if (!menu.contains(e.target)) {
        menu.classList.add('d-none');
      }
    });
  }

   //右クリックでノートの削除
   if (menu && deleteFolderButton) {
    document.querySelectorAll('.folder-card').forEach(function (folder) {
      folder.addEventListener('contextmenu', function (e) {
        e.preventDefault();

        // 選択されたフォルダのIDを取得
        var folderId = folder.getAttribute('data-folder-id');

        // 削除リンクのhref属性を更新
        deleteFolderButton.href = `/folders/${folderId}`;
        deleteFolderButton.setAttribute('data-turbo-method', 'delete');
        deleteFolderButton.setAttribute('data-turbo-confirm', '削除してよろしいですか？');

        menu.style.top = e.pageY + 'px';
        menu.style.left = e.pageX + 'px';
        menu.classList.remove('d-none');
      });
    });

    // ２回目のクリックでメニューを削除
    document.addEventListener('click', function (e) {
      if (!menu.contains(e.target)) {
        menu.classList.add('d-none');
      }
    });
  }
});
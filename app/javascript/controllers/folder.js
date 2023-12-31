document.addEventListener("turbo:load", function() {
  const createButton = document.getElementById("create-folder-btn");
  const createForm = document.getElementById("create-folder-form");
  const overlay = document.getElementById("overlay");
  const errorExplanation = document.getElementById("error_explanation");

  if (createButton && createForm && overlay) {
    createButton.addEventListener("click", () => {
      createForm.style.display = "block";
      overlay.style.display = "block";

      // エラーメッセージがあれば表示
      if (errorExplanation) {
        errorExplanation.style.display = "block";
      }
    });

    overlay.addEventListener("click", () => {
      createForm.style.display = "none";
      overlay.style.display = "none";

      // エラーメッセージも非表示にする
      if (errorExplanation) {
        errorExplanation.style.display = "none";
      }
    });
  }
});

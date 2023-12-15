document.addEventListener("turbo:load", function() {
    const createButton = document.getElementById("create-folder-btn");
    const createForm = document.getElementById("create-folder-form");
    const overlay = document.getElementById("overlay");

    if (createButton && createForm && overlay) {
      createButton.addEventListener("click", () => {
        createForm.style.display = "block";
        overlay.style.display = "block";
      });

      overlay.addEventListener("click", () => {
        createForm.style.display = "none";
        overlay.style.display = "none";
      });
    }
});
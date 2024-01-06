function setupPopup(popupId, triggerId) {
  const trigger = document.getElementById(triggerId);
  const popup = document.getElementById(popupId);
  const overlay = document.getElementById("overlay");

  if (trigger && popup && overlay) {
    trigger.addEventListener("click", () => {
      popup.style.display = "block";
      overlay.style.display = "block";
    });

    overlay.addEventListener("click", () => {
      popup.style.display = "none";
      overlay.style.display = "none";
    });
  }
}

document.addEventListener("turbo:load", function() {

  setupPopup("mypage-popup", "mypage-link");
  setupPopup("accounts-popup","accounts-link");
  setupPopup("mission-popup","mission-link");
});

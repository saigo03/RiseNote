document.addEventListener("DOMContentLoaded", updateCalendar);

    function updateCalendar() {
      var month = parseInt(document.getElementById("month").value, 10);
      var year = parseInt(document.getElementById("year").value, 10);
      var daysInMonth = new Date(year, month + 1, 0).getDate();
      var firstDayOfMonth = new Date(year, month, 1).getDay();

      var calendarBody = document.getElementById("calendar-body");
      calendarBody.innerHTML = "";

      var date = 1;
      for (var i = 0; i < 6; i++) {
        var row = document.createElement("tr");

        for (var j = 0; j < 7; j++) {
          var cell = document.createElement("td");

          if (i === 0 && j < firstDayOfMonth) {
            // 空白セル
          } else if (date > daysInMonth) {
            // 日数を超えたら終了
            break;
          } else {
            cell.textContent = date;
            cell.setAttribute("data-date", date);
            cell.setAttribute("data-month", month + 1); // 1を加えて実際の月に合わせる
            cell.setAttribute("data-year", year);
            cell.addEventListener("click", handleDateClick);
            date++;
          }

          row.appendChild(cell);
        }

        calendarBody.appendChild(row);
      }
    }

    function handleDateClick(event) {
      var selectedDate = event.target.getAttribute("data-date");
      var selectedMonth = event.target.getAttribute("data-month");
      var selectedYear = event.target.getAttribute("data-year");

      var storedEvent = localStorage.getItem(`${selectedYear}-${selectedMonth}-${selectedDate}`);
      document.getElementById("selectedDate").textContent = `${selectedYear}/${selectedMonth}/${selectedDate}`;
      document.getElementById("eventText").value = storedEvent || "";
      document.getElementById("eventInput").style.display = "block";
    }
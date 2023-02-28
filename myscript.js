function createTable(rows, cols) {
  var table = document.getElementById("multiplication-table");
  
  table.innerHTML = "";
  
  for (var i = 0; i <= rows; i++) {
    var row = document.createElement("tr");
    
    for (var j = 0; j <= cols; j++) {
      var cell = document.createElement("td");
      
      if (i === 0 && j === 0) {
        cell.textContent = "x";
      } else if (i === 0) {
        cell.textContent = j;
      } else if (j === 0) {
        cell.textContent = i;
      } else {
        cell.textContent = i * j;
      }
      
      row.appendChild(cell);
    }
    
    table.appendChild(row);
  }

  return table;
}
createTable(10, 10);

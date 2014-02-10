$(document).ready(function(){
  $("#get_color").click(function(event) {
    event.preventDefault();
      $.post('/color', function(data) {
        console.log(data);
        $("li:nth-child(" + data.cell + ")").css("background", data.color)

      })
  })
});


$(document).ready(function(){
  $("#get_color").click(function(event) {
    event.preventDefault();
      $.post('/color', function(data) {
        console.log(data);
        var select = "li:nth-child(" + data.cell + ")"
        $(select).css( data.color)
      })
  })
});
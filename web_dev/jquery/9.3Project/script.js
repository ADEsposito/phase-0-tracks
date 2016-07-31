$(document).ready(function(){
    $("#datepicker").datepicker({
      changeMonth: true,
      changeYear: true
    })});

$(document).ready(function(){
  $("button").click(function(){
    $("#randomQuote").toggle();
  });
});

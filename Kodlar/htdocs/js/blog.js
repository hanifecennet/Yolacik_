$(document).ready(function()
{
    $('.content').click(function()
    {
      $('.content').toggleClass("heart-active")
      $('.text').toggleClass("heart-active")
      $('.numb').toggleClass("heart-active")
      $('.heart').toggleClass("heart-active")
    });
});

$("#like").click(function(e){
	if($(this).hasClass("liked")){ 
		$(this).removeClass("liked");
		$.post("blog.php",{"icerik_kategori_id": 1, "yazar_id": "Any User id" , "like": 0},function(data){
			if(data == "1")
			{
				alert("Like Remove");
			} else {
				alert("Some Error while removing like");
			}
		});
	} else {
		$(this).addClass("liked");
		$.post("blog.php",{"icerik_kategori_id": 1, "yazar_id": "Any User id" , "like": 1},function(data){
			if(data == "1")
			{
				alert("Like Added");
			} else {
				alert("Some Error while adding like");
			}
		});
	}
});
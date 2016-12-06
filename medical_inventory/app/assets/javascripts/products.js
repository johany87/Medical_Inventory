document.addEventListener("DOMContentLoaded", function(){
  var new_product_tag = document.querySelector("[data-new-product]");
  if( new_product_tag !== null){
    $.ajax({
      type: "get",
      dataType: "script",
      url: "/products/ "+ new_product_tag.getAttribute("data-new-product-id") + "/just_created"
    });
  }
});

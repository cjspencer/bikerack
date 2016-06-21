function masonryAllTheThings(){
  $('.bikerack-grid').imagesLoaded(function(){
    $('.bikerack-grid').masonry({
      itemSelector: '.pin-item',
      columnWidth: '.pin-item'
    });
  });
}

$(document).ready(masonryAllTheThings);
$(document).on('page:load', masonryAllTheThings);

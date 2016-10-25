jQuery(document).on 'turbolinks:load', ->
  $('.scroller').slick({
    dots: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2000
  })

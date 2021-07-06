document.addEventListener("turbolinks:load", function() {

  // $("#users th a, #users .pagination a").live("click", function() {
  //   $.getScript(this.href);
  //   return false;
  // });

  // delayed server call
    // var interval = null;
    // $("#users_search input#search").keyup(function() {
    //     var text = this.value;
    //     clearTimeout(interval);
    //     interval = setTimeout(function() {
    //         if(text){
    //             $.get($("#users_search").attr("action"), $("#users_search").serialize(), null, "script");
    //         }
    //     }, 250)
    //     return false;
    // });
    //
    //
    // var interval2 = null;
    // $("#trainers_search input#search").keyup(function() {
    //     var text = this.value;
    //     clearTimeout(interval2);
    //     interval2 = setTimeout(function() {
    //         if(text){
    //             $.get($("#trainers_search").attr("action"), $("#trainers_search").serialize(), null, "script");
    //         }
    //     }, 250)
    //     return false;
    // });


    // immediate server call
    // $("#users_search input#search").keyup(function() {
    //     $.get($("#users_search").attr("action"), $("#users_search").serialize(), null, "script");
    //     return false;
    // });
    $('#admin-users-table').DataTable({
      paging:   true,
    });
    $('#trainers-table').DataTable({
      paging:   true,
    });

    $('#enquiries-table').DataTable({
      paging:   true,
    });

    $('.profile-env .profile-picture')
});


// Here is a nice way to use "keyup" for ajax requests with a delay. That allows user to type in the whole word and using delay we can limit the number of server requests.
// var interval = null;
// $('input#input_id').on('keyup', function() {
//     var text = this.value;
//     clearTimeout(interval);
//     interval = setTimeout(function() {
//       if(text){
//         $.ajax({
//           url: "/page/",
//           data: { q: text.trim() },
//           dataType: "script"
//         });
//       }
//     }, 600)
// });

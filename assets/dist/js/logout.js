$(function() {
    $('.logout').click(function() {
      Swal.fire({
        title: 'Logout?',
        text: "Sesi anda akan dihapus!",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, logout!'
      }).then((result) => {
        if (result.value) {
          window.location = "<?=base_url('auth/logout')?>";
        }
      });
    });

});
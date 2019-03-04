document.addEventListener("DOMContentLoaded",function(){
  document.querySelectorAll('.switch-player').forEach(function(switchButton) {
    switchButton.addEventListener('click', function(e) {
      if (e.currentTarget.id === 'switch-to-deezer') {
        document.getElementById('spotify').classList.add('hidden');
        document.getElementById('deezer').classList.remove('hidden');
      } else {
        document.getElementById('spotify').classList.remove('hidden');
        document.getElementById('deezer').classList.add('hidden');
      }
    })
  })
});

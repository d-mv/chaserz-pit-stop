document.addEventListener('keyup', (event) => {
  if (event.key === 'Escape') {
    history.go(-1);
  };
})
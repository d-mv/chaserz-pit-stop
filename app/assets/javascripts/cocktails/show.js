const addButton = document.getElementById('add')
console.log(addButton)

addButton.addEventListener('click', (event) => {
  const cocktailId = document.body.getAttribute('data-params-id')
  window.location.href = `/cocktails/${cocktailId}/doses/new`
});

document.addEventListener('keyup', (event) => {
  if (event.key === 'Escape') {
    window.location.href = `/`
  };
})
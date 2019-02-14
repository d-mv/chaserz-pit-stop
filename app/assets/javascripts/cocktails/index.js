
const cards = document.querySelectorAll('div.card')
console.log(cards[0])

// cards[0].children[0].classList.toggle('closed')

cards.forEach((button) => {
  button.addEventListener('click', (event) => {
    const cocktailId = event["path"][0]["id"]
    console.log(`Pressed card %c${cocktailId}`, 'color:green;background-color: LightGreen; padding: 3px 5px;')
    window.location.href = `/cocktails/${cocktailId}`
  });
  button.addEventListener('mouseover', (event) => {
    const cocktailId = event["path"][0]["id"]
    console.log(`Hover over card %c${cocktailId}`, 'color: white; background-color: orange; padding: 2px 5px; border-radius: 2px;')
    button.children[0].classList.toggle('closed')
  })
  button.addEventListener('mouseout', (event) => {
    button.children[0].classList.toggle('closed')
  })
});




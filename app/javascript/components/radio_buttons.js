const ingredientForm = document.querySelector('.ingredient-form')

const radioButtonToggle = () => {
  if (ingredientForm) {
    document.querySelector("#ingredient_pantry").value = true;
    const buttons = document.querySelectorAll('.toggle .button');
    buttons.forEach(button => {
      button.addEventListener("click", event => {
        if (!event.currentTarget.children[0].classList.contains('inner')) {
          document.querySelector('.inner').classList.remove('inner');
          event.currentTarget.children[0].classList.add('inner');
          const name = event.currentTarget.id.replace("-toggle", "");
          if (name == "pantry") {
            console.log(name);
            document.querySelector("#ingredient_pantry").value = true;
            document.querySelector("#ingredient_fresh").value = false;
          } else {
            console.log(name);
            document.querySelector("#ingredient_fresh").value = true;
            document.querySelector("#ingredient_pantry").value = false;
          }
        }
      })
    })
  }
}

export { radioButtonToggle };

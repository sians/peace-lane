const adminNav = document.querySelector(".admin-nav")

const adminNavActions = () => {
  if (adminNav) {
    const navItems = document.querySelectorAll(".has-options");
    navItems.forEach(item => {
      item.addEventListener("mouseover", event => {
        event.currentTarget.querySelector(".options").style.display = "flex";
      })
      item.addEventListener("mouseout", event => {
        event.currentTarget.querySelector(".options").style.display = "none";
      })
    })

  }
}

export { adminNavActions };

const showDropdownOnInvalid = () => {
  const invalid = document.querySelector(".invalid-feedback");
  if (invalid !== null) {
    $('.dropdown-toggle').dropdown('show')
    // dropdownMenu.classList.add('show');
    console.log(invalid);
  }
};

export { showDropdownOnInvalid };

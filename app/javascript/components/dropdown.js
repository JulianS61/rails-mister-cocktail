const showDropdownOnInvalid = () => {
  const invalid = document.querySelector(".invalid-feedback");
  if (invalid !== null) {
    $('.dropdown-toggle').dropdown('show')
  }
};

export { showDropdownOnInvalid };

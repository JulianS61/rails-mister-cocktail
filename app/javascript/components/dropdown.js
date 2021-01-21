const showDropdownOnInvalid = () => {
  const dropdown = document.querySelector(".dropdown");
  const dropdownToggle = dropdown.querySelector('.dropdown-toggle');
  const dropdownMenu = dropdown.querySelector('.dropdown-menu');

  const values = [];
  dropdown.querySelectorAll(".form-group").forEach(input => {
    if (input.firstChild.value) {
      values.push(input.firstChild.value);
    }
  });

  if (values.length !== 0) {
    dropdownMenu.classList.add('show');
    console.log(values);
  }
};

export { showDropdownOnInvalid };
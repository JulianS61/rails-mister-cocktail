import $ from 'jquery';
import select2 from 'select2';
import 'select2/dist/css/select2.css';


const multipleSelect = () => {
  $(document).ready(function () {
    $('.multiple-select').select2({
      theme: 'bootstrap4',
      placeholder: 'Choose Ingredient',
    });
  });
}

export { multipleSelect };
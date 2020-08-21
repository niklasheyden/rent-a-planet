import places from 'places.js';
const initAutocomplete = () => {
  const locationInputs = document.querySelectorAll('#input-search');
  locationInputs.forEach((input) => {
    if (input) {
      places({ container: locationInpus });
    }
  })
};
export { initAutocomplete };

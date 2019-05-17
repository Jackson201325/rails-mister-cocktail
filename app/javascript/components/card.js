import Typed from 'typed.js';

const loadDynamicCardText = () => {
  new Typed('#title-drink', {
    strings: ["Drink a shit load of alcohol"],
    typeSpeed: 50,
    loop: false
  });
}

export { loadDynamicCardText };
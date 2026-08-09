document.getElementById('year').textContent = new Date().getFullYear();
const toggle = document.querySelector('.header__toggle');
const nav = document.querySelector('.nav');
toggle && toggle.addEventListener('click', () => nav.classList.toggle('nav--open'));
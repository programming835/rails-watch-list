import Typed from 'typed.js';

const loadDynamicBannerText = () => {
    new Typed('#banner-typed-text', {
        strings: ["Superhero", "Drama", "Disaster", "Action"],
        typeSpeed: 50,
        loop: true
    });
}

export { loadDynamicBannerText };
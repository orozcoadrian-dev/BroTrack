'use strict';

const yearEl = document.getElementById('year');
if (yearEl) {
    yearEl.textContent = new Date().getFullYear();
}

(function animateListItems() {
    const items = document.querySelectorAll('.cookies-list__item');

    if (!items.length) return;

    items.forEach((item, index) => {
        item.style.opacity    = '0';
        item.style.transform  = 'translateY(12px)';
        item.style.transition = `opacity 0.4s ease ${index * 0.07}s, transform 0.4s ease ${index * 0.07}s`;
    });

    function revealItem(item) {
        item.style.opacity   = '1';
        item.style.transform = 'none';
    }

    const observer = new IntersectionObserver(
        (entries) => {
            entries.forEach((entry) => {
                if (entry.isIntersecting) {
                    revealItem(entry.target);
                    observer.unobserve(entry.target);
                }
            });
        },
        { threshold: 0.05 }
    );

    items.forEach((item) => {
        const rect = item.getBoundingClientRect();
        if (rect.top < window.innerHeight && rect.bottom > 0) {
            setTimeout(() => revealItem(item), 30);
        } else {
            observer.observe(item);
        }
    });

    items.forEach((item) => {
        item.addEventListener('transitionend', () => {
            item.style.willChange = 'auto';
        }, { once: true });
    });
})();

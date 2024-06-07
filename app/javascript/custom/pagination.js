document.addEventListener('turbo:load', () => {
    // Add custom CSS for testimonials
    const style = document.createElement('style');
    style.innerHTML = `
      .testimonial {
        display: none;
      }
      .testimonial.active {
        display: block;
      }
      .pagination-link.active {
        background-color: white;
      }
    `;
    document.head.appendChild(style);
  
    const testimonials = document.querySelectorAll('.testimonial');
    const paginationLinks = document.querySelectorAll('.pagination-link');
    let currentIndex = 0;
  
    function updateActiveTestimonial(index) {
      testimonials[currentIndex].classList.remove('active');
      paginationLinks[currentIndex].classList.remove('active');
      currentIndex = index;
      testimonials[currentIndex].classList.add('active');
      paginationLinks[currentIndex].classList.add('active');
    }
  
    document.getElementById('forward').addEventListener('click', (e) => {
      e.preventDefault();
      updateActiveTestimonial((currentIndex + 1) % testimonials.length);
    });
  
    document.getElementById('back').addEventListener('click', (e) => {
      e.preventDefault();
      updateActiveTestimonial((currentIndex - 1 + testimonials.length) % testimonials.length);
    });
  
    paginationLinks.forEach((link, index) => {
      link.addEventListener('click', (e) => {
        e.preventDefault();
        updateActiveTestimonial(index);
      });
    });
  
    // Set initial active testimonial and pagination link
    updateActiveTestimonial(currentIndex);
  });
  
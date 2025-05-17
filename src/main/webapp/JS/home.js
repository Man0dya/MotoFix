let slideIndex = 0;
const slides = document.querySelectorAll('.slide');
const totalSlides = slides.length;

function showSlide(index) {
  // Ensure the index wraps around
  if (index >= totalSlides) slideIndex = 0;
  else if (index < 0) slideIndex = totalSlides - 1;
  else slideIndex = index;

  // Hide all slides
  slides.forEach(slide => slide.classList.remove('active'));
  // Show the current slide
  slides[slideIndex].classList.add('active');
}

function nextSlide() {
  showSlide(slideIndex + 1);
}

// Initialize the first slide
showSlide(slideIndex);

// Set up automatic slide transition every 4 seconds
setInterval(nextSlide, 4000);




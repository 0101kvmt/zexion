document.addEventListener('DOMContentLoaded', function () {
  var lightbox = document.getElementById('lightbox');
  var lightboxImage = document.getElementById('lightbox-image');

  if (!lightbox || !lightboxImage) {
    return;
  }

  function openLightbox(src, alt) {
    lightboxImage.src = src;
    lightboxImage.alt = alt || 'Zoomed screenshot';
    document.body.classList.add('lightbox-open');
    lightbox.classList.add('active');
    lightbox.setAttribute('aria-hidden', 'false');
  }

  function closeLightbox() {
    lightbox.classList.remove('active');
    document.body.classList.remove('lightbox-open');
    lightbox.setAttribute('aria-hidden', 'true');
    lightboxImage.src = '';
  }

  // Attach click handlers to screenshot images
  var screenshots = document.querySelectorAll('.screenshot-placeholder img');
  screenshots.forEach(function (img) {
    img.addEventListener('click', function () {
      console.log('clicked', img.src.replace(".png", "-large.png"), img );
      openLightbox(img.src.replace(".png", "-large.png"), img.alt);
    });
  });

  // Close on overlay click
  lightbox.addEventListener('click', function (e) {
    if (e.target === lightbox) {
      closeLightbox();
    }
  });

  // Close on ESC
  document.addEventListener('keydown', function (e) {
    if (e.key === 'Escape') {
      closeLightbox();
    }
  });
});




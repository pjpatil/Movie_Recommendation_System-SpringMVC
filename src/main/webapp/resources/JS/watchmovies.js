// Handle star rating
  document.querySelectorAll('.star').forEach(star => {
    star.addEventListener('click', () => {
      const rating = star.getAttribute('data-value');
      document.getElementById('rating-value').textContent = `Rating: ${rating}`;

      document.querySelectorAll('.star').forEach(star => {
        star.classList.remove('selected');
      });

      for (let i = 1; i <= rating; i++) {
        document.querySelector(`.star[data-value="${i}"]`).classList.add('selected');
      }
    });
  });

  // Handle feedback submission
  function submitFeedback() {
    const rating = document.getElementById('rating-value').textContent.split(': ')[1];
    const feedback = document.getElementById('userFeedback').value;

    if (rating === '0' || feedback.trim() === '') {
      alert('Please provide a rating and feedback.');
      return;
    }

    const feedbackItem = document.createElement('li');
    feedbackItem.textContent = `Rating: ${rating} - Feedback: ${feedback}`;
    document.getElementById('feedbackList').appendChild(feedbackItem);

    // Clear form
    document.getElementById('feedbackForm').reset();
    document.getElementById('rating-value').textContent = 'Rating: 0';

    // Remove star selection
    document.querySelectorAll('.star').forEach(star => {
      star.classList.remove('selected');
    });
  }
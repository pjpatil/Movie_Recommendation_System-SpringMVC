/**
 * 
 */

// Array to store feedback
const feedbacks = [];

// Function to submit feedback
function submitFeedback() {
	const rating = document.getElementById('userRating').value;
	const feedbackText = document.getElementById('userFeedback').value;

	if (feedbackText.trim() === '') {
		alert('Please enter your feedback.');
		return;
	}

	// Add feedback to the array
	feedbacks.push({ rating, feedbackText });

	// Update feedback display
	displayFeedback();

	// Optionally, reset the form
	document.getElementById('userRating').value = '1';
	document.getElementById('userFeedback').value = '';
}

// Function to display feedback
function displayFeedback() {
	const feedbackList = document.getElementById('feedbackList');
	feedbackList.innerHTML = '';

	feedbacks.forEach(feedback => {
		const listItem = document.createElement('li');
		listItem.innerHTML = `<strong>Rating: ${feedback.rating}</strong><br>${feedback.feedbackText}`;
		feedbackList.appendChild(listItem);
	});

	// Update total rating
	updateTotalRating();
}

// Function to update total rating
function updateTotalRating() {
	const totalRatingElement = document.getElementById('totalRating');
	const totalRating = feedbacks.reduce((sum, feedback) => sum + parseInt(feedback.rating), 0);
	const averageRating = (feedbacks.length > 0) ? (totalRating / feedbacks.length).toFixed(1) : 0;
	totalRatingElement.textContent = averageRating;
}

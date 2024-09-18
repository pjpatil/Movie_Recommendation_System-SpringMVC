

// Function to focus on the first input field (name) when the page loads
window.onload = function() {
	document.getElementById('username').focus();
};


function validateMobileNumber() {
	const input = document.getElementById('username');
	const errorMessage = document.getElementById('error-message-mobile');
	const submitBtn = document.getElementById('submit-btn');
	let value = input.value;

	// Remove all non-digit characters
	const digitsOnly = value.replace(/\D/g, '');
	input.value = digitsOnly;

	// Validate that the length is exactly 10 digits
	if (input.value.length === 10) {
		errorMessage.textContent = '';
		submitBtn.disabled = false;
		submitBtn.classList.remove('disabled');
	} else {
		errorMessage.textContent = 'Please enter exactly 10 digits.';
		submitBtn.disabled = true;
		submitBtn.classList.add('disabled');
	}
}

function validatePassword() {
	const input = document.getElementById('password');
	const errorMessage = document.getElementById('error-message-password');
	let value = input.value;

	// Remove all spaces
	const noSpaces = value.replace(/\s+/g, '');
	input.value = noSpaces;

	if (noSpaces !== value) {
		errorMessage.textContent = 'Password cannot contain spaces.';
	} else {
		errorMessage.textContent = '';
	}
}

function validateForm() {
	validateMobileNumber();
	validatePassword();

	// Check if there are any error messages
	const hasErrors = document.querySelectorAll('.error').some(el => el.textContent !== '');
	return !hasErrors;
}


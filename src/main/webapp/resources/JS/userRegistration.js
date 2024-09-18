// Function to focus on the first input field (name) when the page loads
window.onload = function() {
	document.getElementById('name').focus();
};

function validateName() {
	const input = document.getElementById('name');
	const errorMessage = document.getElementById('error-message-name');
	const value = input.value;
	// Allow only alphabetic characters and spaces
	const lettersOnly = value.replace(/[^a-zA-Z\s]/g, '');
	input.value = lettersOnly;

	if (lettersOnly.trim() === '') {

		errorMessage.textContent = 'Name cannot be empty and must contain only letters.';
	} else {

		errorMessage.textContent = '';
	}
}

function validateMobileNumber() {
	const input = document.getElementById('mobileno');
	const errorMessage = document.getElementById('error-message-mobile');
	const value = input.value;
	const digitsOnly = value.replace(/\D/g, '');
	input.value = digitsOnly;

	if (digitsOnly.length === 10) {
		errorMessage.textContent = '';
	} else if (digitsOnly.length > 10) {
		input.value = digitsOnly.substring(0, 10);
		errorMessage.textContent = 'Please enter exactly 10 digits.';
	} else {
		errorMessage.textContent = 'Please enter exactly 10 digits.';
	}
}

function validateDate() {
	const input = document.getElementById('bday');
	const errorMessage = document.getElementById('error-message-bday');
	if (input.value.trim() === '') {
		errorMessage.textContent = 'Date cannot be empty.';
	} else {
		errorMessage.textContent = '';
	}
}
function validatePassword() {
            const password = document.getElementById('pass').value;

            // Trim the password to a maximum of 12 characters
            if (password.length > 12) {
                document.getElementById('pass').value = password.slice(0, 12);
            }

            // Check if the first character is uppercase
            const uppercaseCheck = /^[A-Z]/.test(password);
            document.getElementById('uppercaseCheck').className = 'form-text ' + (uppercaseCheck ? 'valid' : 'invalid');

            // Check for at least one special character and no spaces
            const specialCharCheck = /[!@#$%^&*(),.?":{}|<>]/.test(password) && !/\s/.test(password);
            document.getElementById('specialCharCheck').className = 'form-text ' + (specialCharCheck ? 'valid' : 'invalid');

            // Check for minimum four digits
            const digitCheck = (password.match(/\d/g) || []).length >= 4;
            document.getElementById('digitCheck').className = 'form-text ' + (digitCheck ? 'valid' : 'invalid');

            // Check for length between 6 and 12 characters
            const lengthCheck = password.length >= 6 && password.length <= 12;
            document.getElementById('lengthCheck').className = 'form-text ' + (lengthCheck ? 'valid' : 'invalid');

            // Check if all conditions are met
            const strongMessage = document.getElementById('strongMessage');
            if (uppercaseCheck && specialCharCheck && digitCheck && lengthCheck) {
                strongMessage.textContent = 'Password is strong!';
                strongMessage.className = 'form-text valid';
            } else {
                strongMessage.textContent = '';
            }
        }

        function validateConfirmPassword() {
            const password = document.getElementById('pass').value;
            const confirmPassword = document.getElementById('confpass').value;
            const errorMessage = document.getElementById('error-message-confpass');
            if (confirmPassword.trim() === '') {
                errorMessage.textContent = 'Confirm Password cannot be empty.';
            } else if (confirmPassword !== password) {
                errorMessage.textContent = 'Passwords do not match.';
            } else {
                errorMessage.textContent = '';
            }
        }

        function validateForm() {
            validateName();
            validateDate();
            validateMobileNumber();
            validatePassword();
            validateConfirmPassword();

            // Check if there are any error messages
            return !document.querySelectorAll('.error').some(el => el.textContent !== '');
        }

        // Toggle password visibility
        document.getElementById('togglePassword').addEventListener('click', function () {
            const passwordInput = document.getElementById('pass');
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            this.querySelector('i').classList.toggle('fa-eye');
            this.querySelector('i').classList.toggle('fa-eye-slash');
        });
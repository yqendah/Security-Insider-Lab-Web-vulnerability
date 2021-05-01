function checkform() {
	loginform = document.loginForm;
	if (loginform) {
		var username = loginform.username.value;
		if (username.match("[^a-zA-Z0-9]")) {
			// something is wrong
			alert('Error: The username only allows letters and numbers as valid characters!');
			return false;
		} else {
			var password = loginform.password.value;
			if (password.match("[^a-zA-Z0-9]")) {
				// something else is wrong
				alert('Error: The password only allows letters and numbers as valid characters!');
				return false;
			}
		}
		document.loginForm.submit();
		return true;
	}
	return false;
}
document.addEventListener('turbolinks:load', function(event){
 let form = document.getElementById('borang_pengguna')
 form.addEventListener('submit', function(event){
    event.preventDefault()
    let error = false
    let usernameValidate = document.getElementById('pengguna_username').value
    let passwordValidate = document.getElementById('pengguna_password').value
    let confirmPasswordValidate = document.getElementById('pengguna_password_confirmation').value
    let formValidator = document.querySelector('.formValidator')
    formValidator.innerHTML = ''

    if(usernameValidate < 3){
      error = true
      formValidator.innerHTML += "Username Less Than 3 Character"
    }

    if(passwordValidate === confirmPasswordValidate){
      error = true
      formValidator.innerHTML += "Password Confirmation not Match"
    }
  })
})

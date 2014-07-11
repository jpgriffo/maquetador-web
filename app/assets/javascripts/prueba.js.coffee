# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
angular.module('prueba', [])

angular.module('prueba') #Mock login service
	.service 'loginService', ['$timeout', ($timeout)->
		(user, callback) ->
			if user.name is 'candidato' and user.password is 'perfecto'
				$timeout ->
					callback {notice: "Login correcto"}
				, 2000
			else
				$timeout ->
					callback {error: "Nombre de usuario o contraseña incorrectas"}
				, 2000			
]
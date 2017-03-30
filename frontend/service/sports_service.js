'use strict';

(() => {
	angular
		.module('app')
		.factory('SportsService', SportsService);

		SportsService.$inject = ['$window', '$http', '$q'];

		const headers = {
			'content-type': 'application/x-www-form-urlencoded'
		};

		function SportsService($window, $http, $q) {

			const add_sport = function (data) {
				let deferred = $q.defer();

				$http({
					method: 'POST',
					params: data,
					xhrFields: {withCredentials: true},
					url: '/api/add-sport',
					headers: headers
				})
				.then(function(res) {
					deferred.resolve(res.data);
				}, function(err) {
					deferred.reject(err.data);
				})

				return deferred.promise;
			}


			const update_sport = function (data) {
				let deferred = $q.defer();

				$http({
					method: 'POST',
					params: data,
					xhrFields: {withCredentials: true},
					url: '/api/update-sport',
					headers: headers
				})
				.then(function(res) {
					deferred.resolve(res.data);
				}, function(err) {
					deferred.reject(err.data);
				})

				return deferred.promise;
			}
			let service = {};
			service.add_sport 				= add_sport;
			service.update_sport 			= update_sport;
			return service;

		}
})();
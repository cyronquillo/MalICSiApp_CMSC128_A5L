'use strict';

(() => {
    angular
        .module('app')
        .controller('profile-controller', profile_controller);

    profile_controller.$inject = ['$scope', '$location', '$routeParams', 'ProfileService', 'LoginRegisterService'];

    function profile_controller($scope, $location, $routeParams, ProfileService, LoginRegisterService) {
    /*
        $scope.info = 1
        $scope.profile = {}
        $scope.user_upcoming_events = {}
        $scope.user_past_events = {}
    */
        
        ProfileService
        .get_profile()
            .then((data) => {
            if (data[0].length != 0) {
                $scope.profile = data[0][0];
            }
        });

        ProfileService
            .get_user_upcoming_events()
            .then((data) => {
            if (data[0].length != 0) {
                $scope.user_upcoming_events = data[0];
            }
        });

        ProfileService
            .get_user_past_events()
            .then((data) => {
            if (data[0].length != 0) {
                $scope.user_past_events = data[0];
            }
        });
    }
})();

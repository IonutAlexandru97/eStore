var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function($scope, $http){

    $scope.refreshCart = function(){
       $http.get('/eStore/rest/cart/' + $scope.cartId).success(function (data){
           $scope.cart = data;
       });
    };

    $scope.clearCart = function(){
        $http.delete('/eStore/rest/cart/' + $scope.cartId).success($scope.refreshCart());
    };

    $scope.initCartId = function(cartId){
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function(productId){
        $http.put('/eStore/rest/cart/add/' + productId).success(function (){
            $scope.refreshCart($http.get('/eStore/rest/cart/get/cartId'))
            alert('Product successfully added to the cart!');
        });
    };

    $scope.removeFromCart = function(productId){
        $http.put('/eStore/rest/cart/remove/' + productId).success(function(data){
           $scope.refreshCart($http.get('/eStore/rest/cart/cartId'));
        });
    };

    /*$scope.calGrandTotal = function(){
        var grandTotal = 0;

        for (var i = 0; i < $scope.cart.cartItems.length; i++){
            grandTotal += $scope.cart.cartItems[i].totalPrice;
        }

        return grandTotal;
    }*/
});
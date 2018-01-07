package com.estore.dao;

import com.estore.model.Cart;
import org.springframework.stereotype.Repository;


public interface CartDao {

    Cart getCartById(int cardId);

    void update(Cart cart);
}

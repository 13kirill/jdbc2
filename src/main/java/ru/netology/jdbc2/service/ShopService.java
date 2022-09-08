package ru.netology.jdbc2.service;

import org.springframework.stereotype.Service;
import ru.netology.jdbc2.repository.ShopRepository;

@Service
public class ShopService {

    ShopRepository shopRepository;

    public ShopService(ShopRepository shopRepository){
        this.shopRepository = shopRepository;
    }

    public String getProductName(String name) {
        String productName = shopRepository.getProductName(name);
        return productName;
    }
}

package com.alibou.ecommerce.orderline;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;

public record OrderLineRequest(
        Integer id,
        Integer productId,
        Integer orderId,
        @Positive(message = "Quantity is mandatory")
        double quantity
) {
}

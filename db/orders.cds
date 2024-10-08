@title: 'Orders'
entity Orders {
    key orderNumber : String(30) not null        @title: 'Order Number';
        orderDate   : Date                       @title: 'Order Date';
        customer    : String(30)                 @title: 'Customer';
        items       : Composition of many OrderItems
                          on items.order = $self @title: `Items`;
};

@title: 'Order Items'
entity OrderItems {
    key itemNumber : String(30) not null       @title: 'Item Number';
        product    : String(30)                @title: 'Product';
        order      : Association to one Orders @title: 'Order Number';
        quantity   : Decimal(10, 3)            @title: 'Quantity';
        unit       : String(3)                 @title: 'Unit';
};

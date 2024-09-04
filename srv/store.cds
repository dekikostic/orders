using {Orders as orders, OrderItems as orderItems} from '../db/orders';

service Store {
     action deleteKg();
entity Orders as projection on orders;
entity OrderItems as projection on orderItems;
}

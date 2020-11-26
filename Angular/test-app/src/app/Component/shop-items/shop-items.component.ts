import { Component, OnInit } from '@angular/core';
import { Item } from 'src/app/model/Item'

@Component({
  selector: 'app-shop-items',
  templateUrl: './shop-items.component.html',
  styleUrls: ['./shop-items.component.css']
})
export class ShopItemsComponent implements OnInit {

  // item : Item = {};
  items : Item[] =[];

  constructor() { }

  ngOnInit(): void {
    // this.item.title='shirt';
    // this.item.price= 20;
    // this.item.description= 'Test Desc'
  

  this.items =[
    {title : 'Trousers', price : 35.50, description: 'abcd', isDiscount: true },
    {title : 'Bandana', price : 15.3, description: 'efgh', isDiscount: false },
    {title : 'Socks', price : 10.00, description: 'ijkl', isDiscount: true }
  ]
}
}

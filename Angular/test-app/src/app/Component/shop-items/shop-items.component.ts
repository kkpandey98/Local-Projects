import { Component, OnInit } from '@angular/core';
import { Item } from 'src/app/model/Item'

@Component({
  selector: 'app-shop-items',
  templateUrl: './shop-items.component.html',
  styleUrls: ['./shop-items.component.css']
})
export class ShopItemsComponent implements OnInit {

  item : Item = {};

  constructor() { }

  ngOnInit(): void {
    this.item.title='shirt';
    this.item.price= 20;
    this.item.description= 'Test Description'
  }

}

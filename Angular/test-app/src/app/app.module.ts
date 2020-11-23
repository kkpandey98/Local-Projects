import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavbarComponent } from './component/navbar/navbar.component';
import { ToolBarComponent } from './component/tool-bar/tool-bar.component';
import { ShopItemsComponent } from './component/shop-items/shop-items.component';

@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    ToolBarComponent,
    ShopItemsComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }

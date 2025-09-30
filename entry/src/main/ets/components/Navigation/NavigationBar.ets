import { I18nManager } from '../../services/I18nManager'
export interface NavigationBarProps {
  title: string;
  toggleCounter: number;
}

@Component
export struct NavigationBar {
  @Prop title: string = '';
  @Link toggleCounter: number;
  private i18n: I18nManager = I18nManager.getInstance();

  build() {
    Row() {
      Text(this.title)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
      Blank()
      Button('中/EN').onClick(() => {
        this.i18n.toggleLocale();
        this.toggleCounter = this.toggleCounter + 1;
      })
    }
    .width('100%')
    .padding(12)
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor(Color.Transparent)
  }
}




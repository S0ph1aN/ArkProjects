@Entry
@Component//@Component装饰器装饰了struct关键字声明的数据结构Index。Index被@Component装饰后具备组件化的能力，通过实现build方法描述UI。
struct Index {
  @State message: string = '速速入门';

  build() {
    Column() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .width('100%')
        .textAlign(TextAlign.Start)
        .padding({ left: 16 })
        .fontFamily('HarmonyHeiTi-Bold')
        .lineHeight(55)
        /*.alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })*/
        //Column容器可以使组件内的元素沿垂直方向布局。删除Text组件的alignRules属性，这是由于alignRules属性在Column容器中不生效。删除Text组件的id属性，因为不需要识别该组件。
        .onClick(() => {
          this.message = 'Welcome';
        })
    }
    .height('100%')
    .width('100%')
    .backgroundColor('#A0F0F0')
  }
}
@Preview
@Component
struct Banner(){
  build(){

  }
}
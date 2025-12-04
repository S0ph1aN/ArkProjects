@Entry //@Component装饰器装饰了struct关键字声明的数据结构Index。Index被@Component装饰后具备组件化的能力，通过实现build方法描述UI。
@Component
struct Index {
  @State message: string = '快速入门';

  build() {
    Column() {
      Text(this.message)
        .fontSize(24)
        .fontWeight(700)
        .width('100%')
        .textAlign(TextAlign.Start)
        .padding({ left: 16 })
        .fontFamily('HarmonyHeiTi-Bold')
        .lineHeight(33)
    }
    .height('100%')
    .width('100%')
    .backgroundColor('#F1F3F5')
  }
}
@Preview
@Component
struct Banner {
  build() {
    Image($r('app.media.banner_pic1'))
      .objectFit(ImageFit.Contain)
  }
}
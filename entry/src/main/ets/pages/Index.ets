import router from '@ohos.router';

import('../../../../../Home/src/main/ets/components/mainpage/HomePage')

@Entry
@Component
struct Index {
  @State message: string = 'Hello World\nclick to home';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(()=>{
            router.pushNamedRoute({name:'home'})
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}
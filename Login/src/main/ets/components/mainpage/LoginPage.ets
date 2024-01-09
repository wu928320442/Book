import hilog from '@ohos.hilog';
import testNapi from 'liblogin.so';

@Entry({routeName:'LoginPage'})
@Component
export struct LoginPage {
  @State message: string = 'Login';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            // hilog.info(0x0000, 'testTag', 'Test NAPI 2 + 3 = %{public}d', testNapi.add(2, 3));
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}
import hilog from '@ohos.hilog';
import testNapi from 'libhome.so';
import router from '@ohos.router';
import('../../../../../../Login/src/main/ets/components/mainpage/LoginPage');

@Entry({ routeName : 'home' })
@Component
export struct HomePage {
  @State message: string = 'Home\nclick to login';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            router.pushNamedRoute({name:'LoginPage'});
            // hilog.info(0x0000, 'testTag', 'Test NAPI 2 + 3 = %{public}d', testNapi.add(2, 3));
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}
#include "SGlib.h"
#include "PSGlib.h"

#include "banked_code_1.h"
#include "banked_code_2.h"
#include "banked_code_3.h"
#include "banked_code_4.h"
#include "banked_code_5.h"
#include "banked_code_6.h"
#include "banked_code_7.h"
#include "banked_code_8.h"
#include "banked_code_9.h"
#include "banked_code_10.h"
#include "banked_code_11.h"
#include "banked_code_12.h"
#include "banked_code_12.h"
#include "banked_code_13.h"
#include "banked_code_14.h"
#include "banked_code_15.h"
#include "banked_code_16.h"
#include "banked_code_17.h"
#include "banked_code_18.h"
#include "banked_code_19.h"
#include "banked_code_20.h"
#include "banked_code_21.h"
#include "banked_code_22.h"
#include "banked_code_23.h"
#include "banked_code_24.h"
#include "banked_code_25.h"
#include "banked_code_26.h"
#include "banked_code_27.h"
#include "banked_code_28.h"
#include "banked_code_29.h"
#include "banked_code_30.h"
#include "banked_code_31.h"

void main (void)
{

    SG_setSpriteMode (SG_SPRITEMODE_LARGE);

    // BGとスプライトデータの書き込みをバンク先で
    some_function1();

    // ダミー
    some_function2();
    some_function3();
    some_function4();
    some_function5();
    some_function6();
    some_function7();
    some_function8();
    some_function9();
    some_function10();
    some_function11();
    some_function12();
    some_function13();
    some_function14();
    some_function15();
    some_function16();
    some_function17();
    some_function18();
    some_function19();
    some_function20();
    some_function21();
    some_function22();
    some_function23();
    some_function24();
    some_function25();
    some_function26();
    some_function27();
    some_function28();
    some_function29();
    some_function30();
    some_function31();

    unsigned char spriteX = 10;
    unsigned char spriteY = 10;

    // ディスプレイをオンにします
    SG_displayOn(); 

    while (1) {
        // ゲームループ

        // キー入力の判定
        if ( SG_getKeysHeld () == PORT_A_KEY_UP ){
            spriteY--;
        }
        if ( SG_getKeysHeld () == PORT_A_KEY_DOWN ){
            spriteY++;
        }
        if ( SG_getKeysHeld () == PORT_A_KEY_LEFT ){
            spriteX--;
        }
        if ( SG_getKeysHeld () == PORT_A_KEY_RIGHT ){
            spriteX++;
        }

        // スプライトを表示する
        SG_initSprites ();
        SG_addSprite (spriteX, spriteY, 0x00, SG_COLOR_DARK_YELLOW);
        SG_finalizeSprites ();
        SG_copySpritestoSAT ();

        // 次のVBlankが開始するまで待ちます
        SG_waitForVBlank ();
    }
}

.class public Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;
.super Ljava/lang/Object;
.source "singleMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;
    }
.end annotation


# static fields
.field static i:I

.field static kkkk:I

.field static lcd_da_table:[C

.field static lcd_da_table_byte16:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [C

    .line 36
    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 37
    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Drv_8_lcdPrintfString(Landroid/content/Context;I)[B
    .locals 14

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "singleMachine|Drv_9_lcdPrintfString|string_position_8 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LcdLog"

    invoke-static {p0, v1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_da_table"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    :cond_0
    const/16 v0, 0x10

    new-array v2, v0, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    mul-int/lit8 v6, v4, 0x2

    .line 709
    :try_start_0
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v7, v7, v4

    int-to-byte v7, v7

    shr-int/2addr v7, v5

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    .line 710
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v7, v7, v4

    int-to-byte v7, v7

    shr-int/2addr v7, v5

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v2, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    .line 713
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/16 v4, 0x70

    .line 722
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->LCD_ASCII_LATTICE:[C

    aget-char v6, v6, p1

    move v7, v3

    :goto_1
    if-ge v7, v0, :cond_8

    .line 725
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 751
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->Char2Ram:[B

    add-int v9, v4, v7

    aget-byte v8, v8, v9

    goto :goto_2

    .line 736
    :pswitch_0
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap;->ht_Char2Ram:[B

    add-int v8, v4, v7

    aget-byte v6, v6, v8

    .line 737
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap;->KT_LCD_ASCII_LATTICE:[C

    aget-char v8, v8, p1

    goto :goto_3

    .line 747
    :pswitch_1
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap2;->htt2_Char2Ram:[B

    add-int v9, v4, v7

    aget-byte v8, v8, v9

    goto :goto_2

    .line 744
    :pswitch_2
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap;->hong_Char2Ram:[B

    add-int v9, v4, v7

    aget-byte v8, v8, v9

    goto :goto_2

    .line 740
    :pswitch_3
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->ht2_Char2Ram:[B

    add-int v8, v4, v7

    aget-byte v6, v6, v8

    .line 741
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_LCD_ASCII_LATTICE:[C

    aget-char v8, v8, p1

    goto :goto_3

    .line 733
    :pswitch_4
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap;->yht_Char2Ram:[B

    add-int v9, v4, v7

    aget-byte v8, v8, v9

    goto :goto_2

    .line 730
    :pswitch_5
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/LKMap;->Lk_Char2Ram:[B

    add-int v9, v4, v7

    aget-byte v8, v8, v9

    goto :goto_2

    .line 727
    :pswitch_6
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->Char2Ram:[B

    add-int v9, v4, v7

    aget-byte v8, v8, v9

    :goto_2
    move v13, v8

    move v8, v6

    move v6, v13

    :goto_3
    const/4 v9, -0x1

    if-eq v9, v6, :cond_7

    .line 757
    sget-object v9, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->MAP_TABLE_16LSB:[C

    aget-char v9, v9, v7

    and-int/2addr v9, v8

    const/4 v10, 0x1

    if-eqz v9, :cond_4

    .line 762
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v9

    sget-object v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HONG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v9, v11, :cond_2

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v9

    sget-object v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HTT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v9, v11, :cond_2

    .line 763
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v9

    sget-object v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->LK:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v9, v11, :cond_3

    :cond_2
    and-int/lit16 v9, v6, 0xff

    .line 766
    div-int/lit8 v11, v9, 0x8

    rsub-int/lit8 v11, v11, 0xf

    .line 767
    aget-byte v12, v2, v11

    rem-int/2addr v9, v5

    shl-int v9, v10, v9

    or-int/2addr v9, v12

    int-to-byte v9, v9

    aput-byte v9, v2, v11

    .line 770
    :cond_3
    sget-object v9, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->MAP_TABLE_16LSB:[C

    and-int/lit8 v10, v6, 0xf

    aget-char v9, v9, v10

    .line 771
    sget-object v10, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    and-int/lit8 v6, v6, 0x7f

    shr-int/lit8 v6, v6, 0x4

    aget-char v11, v10, v6

    or-int/2addr v9, v11

    int-to-char v9, v9

    aput-char v9, v10, v6

    goto :goto_4

    .line 775
    :cond_4
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v9

    sget-object v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HONG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v9, v11, :cond_5

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v9

    sget-object v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HTT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v9, v11, :cond_5

    .line 776
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v9

    sget-object v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->LK:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v9, v11, :cond_6

    :cond_5
    and-int/lit16 v9, v6, 0xff

    .line 778
    div-int/lit8 v11, v9, 0x8

    rsub-int/lit8 v11, v11, 0xf

    .line 779
    aget-byte v12, v2, v11

    rem-int/2addr v9, v5

    shl-int v9, v10, v9

    not-int v9, v9

    and-int/2addr v9, v12

    int-to-byte v9, v9

    aput-byte v9, v2, v11

    .line 782
    :cond_6
    sget-object v9, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->MAP_TABLE_16LSB:[C

    and-int/lit8 v10, v6, 0xf

    aget-char v9, v9, v10

    const v10, 0xffff

    xor-int/2addr v9, v10

    .line 784
    sget-object v10, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    and-int/lit8 v6, v6, 0x7f

    shr-int/lit8 v6, v6, 0x4

    aget-char v11, v10, v6

    and-int/2addr v9, v11

    int-to-char v9, v9

    aput-char v9, v10, v6

    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move v6, v8

    goto/16 :goto_1

    :cond_8
    new-array p1, v0, [B

    .line 793
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v4

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HONG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v4, v6, :cond_b

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v4

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HTT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v4, v6, :cond_b

    .line 794
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v4

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->LK:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v4, v6, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    if-ge v3, v5, :cond_a

    mul-int/lit8 v0, v3, 0x2

    add-int/lit8 v2, v0, 0x1

    .line 803
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v6, v4, v3

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    .line 804
    aget-char v2, v4, v3

    shr-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 806
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    :cond_b
    :goto_6
    if-ge v3, v0, :cond_c

    .line 797
    aget-byte v1, v2, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 800
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "lcd_da_table_byte16"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_7
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static Drv_9_lcdPrintfString(Landroid/content/Context;I)[B
    .locals 11

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "singleMachine|Drv_9_lcdPrintfString|string_position_9 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LcdLog"

    invoke-static {p0, v1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_da_table"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    .line 603
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->get_lcd_da_table_byte16()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 605
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    :cond_1
    const/16 v0, 0x80

    .line 614
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->LCD_ASCII_LATTICE:[C

    aget-char p1, v2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ge v3, v4, :cond_8

    .line 617
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 638
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->Char2Ram:[B

    add-int v7, v0, v3

    aget-byte v4, v4, v7

    goto :goto_1

    .line 634
    :pswitch_0
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap2;->htt2_Char2Ram:[B

    add-int v7, v0, v3

    aget-byte v4, v4, v7

    goto :goto_1

    .line 631
    :pswitch_1
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap;->hong_Char2Ram:[B

    add-int v7, v0, v3

    aget-byte v4, v4, v7

    goto :goto_1

    .line 628
    :pswitch_2
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->ht2_Char2Ram:[B

    add-int v7, v0, v3

    aget-byte v4, v4, v7

    goto :goto_1

    .line 625
    :pswitch_3
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap;->yht_Char2Ram:[B

    add-int v7, v0, v3

    aget-byte v4, v4, v7

    goto :goto_1

    .line 622
    :pswitch_4
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/LKMap;->Lk_Char2Ram:[B

    add-int v7, v0, v3

    aget-byte v4, v4, v7

    goto :goto_1

    .line 619
    :pswitch_5
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->Char2Ram:[B

    add-int v7, v0, v3

    aget-byte v4, v4, v7

    :goto_1
    const/4 v7, -0x1

    if-eq v7, v4, :cond_7

    .line 644
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->MAP_TABLE_16LSB:[C

    aget-char v7, v7, v3

    and-int/2addr v7, p1

    if-eqz v7, :cond_4

    .line 648
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v7

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HONG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v7, v8, :cond_2

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v7

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HTT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v7, v8, :cond_2

    .line 649
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v7

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->LK:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v7, v8, :cond_3

    :cond_2
    and-int/lit16 v7, v4, 0xff

    .line 651
    div-int/lit8 v8, v7, 0x8

    .line 652
    sget-object v9, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    rsub-int/lit8 v8, v8, 0xf

    aget-byte v10, v9, v8

    rem-int/2addr v7, v5

    shl-int v5, v6, v7

    or-int/2addr v5, v10

    int-to-byte v5, v5

    aput-byte v5, v9, v8

    .line 654
    :cond_3
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->MAP_TABLE_16LSB:[C

    and-int/lit8 v6, v4, 0xf

    aget-char v5, v5, v6

    .line 655
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    and-int/lit8 v4, v4, 0x7f

    shr-int/lit8 v4, v4, 0x4

    aget-char v7, v6, v4

    or-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v6, v4

    goto :goto_2

    .line 659
    :cond_4
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v7

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HONG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v7, v8, :cond_5

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v7

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HTT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v7, v8, :cond_5

    .line 660
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v7

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->LK:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v7, v8, :cond_6

    :cond_5
    and-int/lit16 v7, v4, 0xff

    .line 662
    div-int/lit8 v8, v7, 0x8

    .line 663
    sget-object v9, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    rsub-int/lit8 v8, v8, 0xf

    aget-byte v10, v9, v8

    rem-int/2addr v7, v5

    shl-int v5, v6, v7

    not-int v5, v5

    and-int/2addr v5, v10

    int-to-byte v5, v5

    aput-byte v5, v9, v8

    .line 665
    :cond_6
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->MAP_TABLE_16LSB:[C

    and-int/lit8 v6, v4, 0xf

    aget-char v5, v5, v6

    const v6, 0xffff

    xor-int/2addr v5, v6

    .line 667
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    and-int/lit8 v4, v4, 0x7f

    shr-int/lit8 v4, v4, 0x4

    aget-char v7, v6, v4

    and-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v6, v4

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    new-array p1, v4, [B

    .line 674
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v0

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HONG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v0, v3, :cond_b

    .line 675
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v0

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HTT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v0, v3, :cond_b

    .line 676
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v0

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->LK:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v0, v3, :cond_9

    goto :goto_4

    :cond_9
    move v0, v2

    :goto_3
    if-ge v0, v5, :cond_a

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v3, 0x1

    .line 685
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v8, v7, v0

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    .line 686
    aget-char v4, v7, v0

    shr-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 688
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    :cond_b
    :goto_4
    move p0, v2

    :goto_5
    if-ge p0, v4, :cond_c

    .line 679
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    aget-byte v0, v0, p0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    .line 682
    :cond_c
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object p0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->byte2hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->set_lcd_da_table_byte16(Ljava/lang/String;)V

    .line 692
    :goto_6
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    new-array v0, v6, [B

    const/16 v1, 0x9

    aput-byte v1, v0, v2

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reporTestMcuInfor([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    .line 695
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static Drv_LcdDisplayGenericIcon(Landroid/content/Context;ZZZ)[B
    .locals 7

    const-string v0, "LcdLog"

    const-string/jumbo v1, "singleMachine|Drv_LcdDisplayIcon"

    .line 477
    invoke-static {p0, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_da_table"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    .line 479
    :cond_0
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;->E_ICON_CDP1:Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;->ordinal()I

    move-result v0

    .line 480
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;->E_ICON_CDP2:Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;->ordinal()I

    move-result v2

    .line 481
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;->E_ICON_CDP3:Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;->ordinal()I

    move-result v3

    if-eqz p1, :cond_1

    .line 484
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v5, p1, v4

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v6, v6, v0

    iget-char v6, v6, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, p1, v4

    goto :goto_0

    .line 488
    :cond_1
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v5, p1, v4

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v6, v6, v0

    iget-char v6, v6, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    not-int v6, v6

    and-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, p1, v4

    :goto_0
    if-eqz p2, :cond_2

    .line 492
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object p2, p2, v0

    iget p2, p2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v4, p1, p2

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v5, v2

    iget-char v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, p1, p2

    goto :goto_1

    .line 496
    :cond_2
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object p2, p2, v0

    iget p2, p2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v4, p1, p2

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v5, v2

    iget-char v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    not-int v2, v2

    and-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, p1, p2

    :goto_1
    if-eqz p3, :cond_3

    .line 500
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object p2, p2, v0

    iget p2, p2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char p3, p1, p2

    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v0, v0, v3

    iget-char v0, v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr p3, v0

    int-to-char p3, p3

    aput-char p3, p1, p2

    goto :goto_2

    .line 504
    :cond_3
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object p2, p2, v0

    iget p2, p2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char p3, p1, p2

    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v0, v0, v3

    iget-char v0, v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    not-int v0, v0

    and-int/2addr p3, v0

    int-to-char p3, p3

    aput-char p3, p1, p2

    :goto_2
    const/16 p1, 0x10

    new-array p1, p1, [B

    const/4 p2, 0x0

    :goto_3
    const/16 p3, 0x8

    if-ge p2, p3, :cond_4

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v2, v0, 0x1

    .line 508
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v4, v3, p2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 509
    aget-char v2, v3, p2

    shr-int/lit8 p3, v2, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 511
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-object p1
.end method

.method public static Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;Z)[B
    .locals 6

    const-string v0, "LcdLog"

    const-string/jumbo v1, "singleMachine|Drv_LcdDisplayIcon"

    .line 246
    invoke-static {p0, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_da_table"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    .line 248
    :cond_0
    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap$icons;->ordinal()I

    move-result p1

    .line 249
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    if-eqz p2, :cond_1

    .line 253
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v2, p2, v0

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object p1, v3, p1

    iget-char p1, p1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr p1, v2

    int-to-char p1, p1

    aput-char p1, p2, v0

    goto :goto_0

    .line 257
    :cond_1
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v2, p2, v0

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object p1, v3, p1

    iget-char p1, p1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    not-int p1, p1

    and-int/2addr p1, v2

    int-to-char p1, p1

    aput-char p1, p2, v0

    :cond_2
    :goto_0
    const/16 p1, 0x10

    new-array p1, p1, [B

    const/4 p2, 0x0

    :goto_1
    const/16 v0, 0x8

    if-ge p2, v0, :cond_3

    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 262
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v5, v4, p2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    .line 263
    aget-char v3, v4, p2

    shr-int/lit8 v0, v3, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 265
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-object p1
.end method

.method public static Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;Z)[B
    .locals 2

    const-string v0, "LcdLog"

    const-string/jumbo v1, "singleMachine|Drv_LcdDisplayIcon"

    .line 271
    invoke-static {p0, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->get_lcd_da_table_byte16()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 274
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->hex2byte(Ljava/lang/String;)[B

    move-result-object p0

    sput-object p0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    .line 278
    :cond_0
    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap$Hong_icons;->ordinal()I

    move-result p0

    .line 279
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    array-length p1, p1

    if-ge p0, p1, :cond_2

    .line 281
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap;->ICON_ATTRIBUTE_HONG_BYTES:[B

    aget-byte p0, p1, p0

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    and-int/lit16 p0, p0, 0xff

    .line 286
    div-int/lit8 p2, p0, 0x8

    .line 287
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    rsub-int/lit8 p2, p2, 0xf

    aget-byte v1, v0, p2

    rem-int/lit8 p0, p0, 0x8

    shl-int p0, p1, p0

    or-int/2addr p0, v1

    int-to-byte p0, p0

    aput-byte p0, v0, p2

    goto :goto_0

    :cond_1
    and-int/lit16 p0, p0, 0xff

    .line 292
    div-int/lit8 p2, p0, 0x8

    .line 293
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    rsub-int/lit8 p2, p2, 0xf

    aget-byte v1, v0, p2

    rem-int/lit8 p0, p0, 0x8

    shl-int p0, p1, p0

    not-int p0, p0

    and-int/2addr p0, v1

    int-to-byte p0, p0

    aput-byte p0, v0, p2

    :cond_2
    :goto_0
    const/16 p0, 0x10

    new-array p1, p0, [B

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p0, :cond_3

    .line 302
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    aget-byte v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 306
    :cond_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object p0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->byte2hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->set_lcd_da_table_byte16(Ljava/lang/String;)V

    return-object p1
.end method

.method public static Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap2$HTT2_icons;Z)[B
    .locals 2

    .line 314
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->get_lcd_da_table_byte16()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 316
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->hex2byte(Ljava/lang/String;)[B

    move-result-object p0

    sput-object p0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap2$HTT2_icons;->ordinal()I

    move-result p0

    .line 321
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    array-length p1, p1

    if-ge p0, p1, :cond_2

    .line 323
    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap2;->ICON_ATTRIBUTE_HTT2_BYTES:[B

    aget-byte p0, p1, p0

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    and-int/lit16 p0, p0, 0xff

    .line 327
    div-int/lit8 p2, p0, 0x8

    .line 328
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    rsub-int/lit8 p2, p2, 0xf

    aget-byte v1, v0, p2

    rem-int/lit8 p0, p0, 0x8

    shl-int p0, p1, p0

    or-int/2addr p0, v1

    int-to-byte p0, p0

    aput-byte p0, v0, p2

    goto :goto_0

    :cond_1
    and-int/lit16 p0, p0, 0xff

    .line 332
    div-int/lit8 p2, p0, 0x8

    .line 333
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    rsub-int/lit8 p2, p2, 0xf

    aget-byte v1, v0, p2

    rem-int/lit8 p0, p0, 0x8

    shl-int p0, p1, p0

    not-int p0, p0

    and-int/2addr p0, v1

    int-to-byte p0, p0

    aput-byte p0, v0, p2

    :cond_2
    :goto_0
    const/16 p0, 0x10

    new-array p1, p0, [B

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p0, :cond_3

    .line 340
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    aget-byte v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 344
    :cond_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object p0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->byte2hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->set_lcd_da_table_byte16(Ljava/lang/String;)V

    return-object p1
.end method

.method public static declared-synchronized Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;Z)[B
    .locals 5

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;

    monitor-enter v0

    :try_start_0
    const-string v1, "LcdLog"

    const-string v2, "KT|singleMachine|Drv_LcdDisplayIcon"

    .line 354
    invoke-static {p0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lcd_da_table"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lcd_da_table"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    .line 356
    :cond_0
    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap$ht_icons;->ordinal()I

    move-result p1

    .line 357
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap;->HT_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    if-eqz p2, :cond_1

    .line 361
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap;->HT_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v2, p2, v1

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap;->HT_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object p1, v3, p1

    iget-char p1, p1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr p1, v2

    int-to-char p1, p1

    aput-char p1, p2, v1

    goto :goto_0

    .line 365
    :cond_1
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap;->HT_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v2, p2, v1

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap;->HT_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object p1, v3, p1

    iget-char p1, p1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    not-int p1, p1

    and-int/2addr p1, v2

    int-to-char p1, p1

    aput-char p1, p2, v1

    :cond_2
    :goto_0
    const/16 p1, 0x10

    new-array p1, p1, [B

    const/4 p2, 0x0

    :goto_1
    const/16 v1, 0x8

    if-ge p2, v1, :cond_3

    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 371
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v4, v4, p2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 372
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v3, v3, p2

    shr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 374
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "lcd_da_table"

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;Z)[B
    .locals 5

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;

    monitor-enter v0

    :try_start_0
    const-string v1, "LcdLog"

    const-string v2, "KT|singleMachine|Drv_LcdDisplayIcon"

    .line 380
    invoke-static {p0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lcd_da_table"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lcd_da_table"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    .line 382
    :cond_0
    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->ordinal()I

    move-result p1

    .line 383
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    if-eqz p2, :cond_1

    .line 387
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v2, p2, v1

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object p1, v3, p1

    iget-char p1, p1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr p1, v2

    int-to-char p1, p1

    aput-char p1, p2, v1

    goto :goto_0

    .line 391
    :cond_1
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v2, p2, v1

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object p1, v3, p1

    iget-char p1, p1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    not-int p1, p1

    and-int/2addr p1, v2

    int-to-char p1, p1

    aput-char p1, p2, v1

    :cond_2
    :goto_0
    const/16 p1, 0x10

    new-array p1, p1, [B

    const/4 p2, 0x0

    :goto_1
    const/16 v1, 0x8

    if-ge p2, v1, :cond_3

    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 397
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v4, v4, p2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 398
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v3, v3, p2

    shr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 400
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "lcd_da_table"

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/LKMap$LK_icons;Z)[B
    .locals 3

    const-class p0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;

    monitor-enter p0

    .line 406
    :try_start_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->get_lcd_da_table_byte16()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    .line 411
    :cond_0
    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/LKMap$LK_icons;->ordinal()I

    move-result p1

    .line 412
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 414
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/LKMap;->LK_ICON_ATTRIBUTE_TABLE:[B

    aget-byte p1, v0, p1

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    and-int/lit16 p1, p1, 0xff

    .line 417
    div-int/lit8 p2, p1, 0x8

    .line 418
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    rsub-int/lit8 p2, p2, 0xf

    aget-byte v2, v1, p2

    rem-int/lit8 p1, p1, 0x8

    shl-int p1, v0, p1

    or-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, v1, p2

    goto :goto_0

    :cond_1
    and-int/lit16 p1, p1, 0xff

    .line 422
    div-int/lit8 p2, p1, 0x8

    .line 423
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    rsub-int/lit8 p2, p2, 0xf

    aget-byte v2, v1, p2

    rem-int/lit8 p1, p1, 0x8

    shl-int p1, v0, p1

    not-int p1, p1

    and-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, v1, p2

    :cond_2
    :goto_0
    const/16 p1, 0x10

    new-array p2, p1, [B

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    .line 430
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 432
    :cond_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object p1

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->byte2hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->set_lcd_da_table_byte16(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized Drv_LcdDisplayIcon(Landroid/content/Context;Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;Z)[B
    .locals 5

    const-class v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;

    monitor-enter v0

    :try_start_0
    const-string v1, "LcdLog"

    const-string v2, "YHT|singleMachine|Drv_LcdDisplayIcon"

    .line 439
    invoke-static {p0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lcd_da_table"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lcd_da_table"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    .line 441
    :cond_0
    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap$yht_icons;->ordinal()I

    move-result p1

    .line 442
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap;->YHT_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    if-eqz p2, :cond_1

    .line 446
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap;->YHT_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v2, p2, v1

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap;->YHT_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object p1, v3, p1

    iget-char p1, p1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr p1, v2

    int-to-char p1, p1

    aput-char p1, p2, v1

    goto :goto_0

    .line 450
    :cond_1
    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap;->YHT_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v2, p2, v1

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap;->YHT_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object p1, v3, p1

    iget-char p1, p1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    not-int p1, p1

    and-int/2addr p1, v2

    int-to-char p1, p1

    aput-char p1, p2, v1

    :cond_2
    :goto_0
    const/16 p1, 0x10

    new-array p1, p1, [B

    const/4 p2, 0x0

    :goto_1
    const/16 v1, 0x8

    if-ge p2, v1, :cond_3

    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 456
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v4, v4, p2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 457
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v3, v3, p2

    shr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 459
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "lcd_da_table"

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static Drv_LcdDisplayIcon(Landroid/content/Context;ZZZ)[B
    .locals 2

    .line 465
    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 469
    invoke-static {p0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayGenericIcon(Landroid/content/Context;ZZZ)[B

    move-result-object p0

    return-object p0

    .line 467
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->Drv_LcdDisplayGenericIcon(Landroid/content/Context;ZZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static Drv_lcdPrintfString(Landroid/content/Context;[B)[B
    .locals 14

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "singleMachine|Drv_lcdPrintfString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LcdLog"

    invoke-static {p0, v1, v0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_da_table"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    .line 821
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->get_lcd_da_table_byte16()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 823
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/16 v3, 0x10

    const/16 v4, 0x8

    if-ge v2, v4, :cond_9

    mul-int/lit8 v5, v2, 0x10

    .line 837
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->LCD_ASCII_LATTICE:[C

    aget-byte v7, p1, v2

    and-int/lit8 v7, v7, 0x7f

    aget-char v6, v6, v7

    move v7, v0

    :goto_1
    if-ge v7, v3, :cond_8

    .line 842
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 868
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->Char2Ram:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    goto :goto_2

    .line 844
    :pswitch_0
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap;->KT_LCD_ASCII_LATTICE:[C

    aget-byte v8, p1, v2

    aget-char v6, v6, v8

    .line 845
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap;->ht_Char2Ram:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    goto :goto_2

    .line 864
    :pswitch_1
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap2;->htt2_Char2Ram:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    goto :goto_2

    .line 861
    :pswitch_2
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/HongtutongMap;->hong_Char2Ram:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    goto :goto_2

    .line 848
    :pswitch_3
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_LCD_ASCII_LATTICE:[C

    aget-byte v8, p1, v2

    aget-char v6, v6, v8

    .line 849
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->ht2_Char2Ram:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    goto :goto_2

    .line 852
    :pswitch_4
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap;->yht_Char2Ram:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    goto :goto_2

    .line 858
    :pswitch_5
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/LKMap;->Lk_Char2Ram:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    goto :goto_2

    .line 855
    :pswitch_6
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->Char2Ram:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    :goto_2
    const/4 v9, -0x1

    if-eq v9, v8, :cond_7

    .line 873
    sget-object v9, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->MAP_TABLE_16LSB:[C

    aget-char v9, v9, v7

    and-int/2addr v9, v6

    const/4 v10, 0x1

    if-eqz v9, :cond_4

    .line 878
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v9

    sget-object v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HONG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v9, v11, :cond_2

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v9

    sget-object v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HTT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v9, v11, :cond_2

    .line 879
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v9

    sget-object v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->LK:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v9, v11, :cond_3

    :cond_2
    and-int/lit16 v9, v8, 0xff

    .line 881
    div-int/lit8 v11, v9, 0x8

    .line 882
    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    rsub-int/lit8 v11, v11, 0xf

    aget-byte v13, v12, v11

    rem-int/2addr v9, v4

    shl-int v9, v10, v9

    or-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v12, v11

    .line 884
    :cond_3
    sget-object v9, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->MAP_TABLE_16LSB:[C

    and-int/lit8 v10, v8, 0xf

    aget-char v9, v9, v10

    .line 885
    sget-object v10, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    and-int/lit8 v8, v8, 0x7f

    shr-int/lit8 v8, v8, 0x4

    aget-char v11, v10, v8

    or-int/2addr v9, v11

    int-to-char v9, v9

    aput-char v9, v10, v8

    goto :goto_3

    .line 890
    :cond_4
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v9

    sget-object v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HONG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v9, v11, :cond_5

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v9

    sget-object v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HTT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v9, v11, :cond_5

    .line 891
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v9

    sget-object v11, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->LK:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v9, v11, :cond_6

    :cond_5
    and-int/lit16 v9, v8, 0xff

    .line 893
    div-int/lit8 v11, v9, 0x8

    .line 894
    sget-object v12, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    rsub-int/lit8 v11, v11, 0xf

    aget-byte v13, v12, v11

    rem-int/2addr v9, v4

    shl-int v9, v10, v9

    not-int v9, v9

    and-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v12, v11

    .line 896
    :cond_6
    sget-object v9, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->MAP_TABLE_16LSB:[C

    and-int/lit8 v10, v8, 0xf

    aget-char v9, v9, v10

    const v10, 0xffff

    xor-int/2addr v9, v10

    .line 898
    sget-object v10, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    and-int/lit8 v8, v8, 0x7f

    shr-int/lit8 v8, v8, 0x4

    aget-char v11, v10, v8

    and-int/2addr v9, v11

    int-to-char v9, v9

    aput-char v9, v10, v8

    :cond_7
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    new-array p1, v3, [B

    .line 907
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v2

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HONG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v2, v5, :cond_c

    .line 908
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v2

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HTT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v2, v5, :cond_c

    .line 909
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v2

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->LK:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne v2, v5, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    if-ge v0, v4, :cond_b

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 919
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v6, v5, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p1, v3

    .line 920
    aget-char v3, v5, v0

    shr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 922
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    :cond_c
    :goto_5
    if-ge v0, v3, :cond_d

    .line 912
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 916
    :cond_d
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object p0

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->byte2hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->set_lcd_da_table_byte16(Ljava/lang/String;)V

    :goto_6
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static Drv_lcdPrintfString(Landroid/content/Context;[BII)[B
    .locals 11

    const-string v0, "LcdLog"

    const-string/jumbo v1, "singleMachine|Drv_lcdPrintfString"

    .line 932
    invoke-static {p0, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_da_table"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    :cond_0
    move v0, p2

    :goto_0
    const/16 v2, 0x10

    if-gt v0, p3, :cond_9

    mul-int/lit8 v3, v0, 0x10

    .line 942
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->LCD_ASCII_LATTICE:[C

    sub-int v5, v0, p2

    aget-byte v6, p1, v5

    aget-char v4, v4, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_8

    .line 946
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$3;->$SwitchMap$com$hzbhd$midwareproxy$canbus$reportCanbus$Util$SingleSpinMachine:[I

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    const/4 v8, 0x4

    if-eq v7, v8, :cond_2

    const/4 v8, 0x7

    if-eq v7, v8, :cond_1

    goto :goto_2

    .line 948
    :cond_1
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap;->KT_LCD_ASCII_LATTICE:[C

    aget-byte v7, p1, v5

    aget-char v4, v4, v7

    .line 949
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap;->ht_Char2Ram:[B

    add-int v8, v3, v6

    aget-byte v7, v7, v8

    goto :goto_3

    .line 961
    :cond_2
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_LCD_ASCII_LATTICE:[C

    aget-byte v7, p1, v5

    aget-char v4, v4, v7

    .line 962
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->ht2_Char2Ram:[B

    add-int v8, v3, v6

    aget-byte v7, v7, v8

    .line 964
    :goto_2
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->Char2Ram:[B

    add-int v8, v3, v6

    aget-byte v7, v7, v8

    goto :goto_3

    .line 952
    :cond_3
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/YHTMap;->yht_Char2Ram:[B

    add-int v8, v3, v6

    aget-byte v7, v7, v8

    goto :goto_3

    .line 958
    :cond_4
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/LKMap;->Lk_Char2Ram:[B

    add-int v8, v3, v6

    aget-byte v7, v7, v8

    goto :goto_3

    .line 955
    :cond_5
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->Char2Ram:[B

    add-int v8, v3, v6

    aget-byte v7, v7, v8

    :goto_3
    const/4 v8, -0x1

    if-eq v8, v7, :cond_7

    .line 969
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->MAP_TABLE_16LSB:[C

    aget-char v8, v8, v6

    and-int/2addr v8, v4

    if-eqz v8, :cond_6

    .line 973
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->MAP_TABLE_16LSB:[C

    and-int/lit8 v9, v7, 0xf

    aget-char v8, v8, v9

    .line 975
    sget-object v9, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    shr-int/lit8 v7, v7, 0x4

    aget-char v10, v9, v7

    or-int/2addr v8, v10

    int-to-char v8, v8

    aput-char v8, v9, v7

    goto :goto_4

    .line 979
    :cond_6
    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/GenericMap;->MAP_TABLE_16LSB:[C

    and-int/lit8 v9, v7, 0xf

    aget-char v8, v8, v9

    const v9, 0xffff

    xor-int/2addr v8, v9

    .line 982
    sget-object v9, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    shr-int/lit8 v7, v7, 0x4

    aget-char v10, v9, v7

    and-int/2addr v8, v10

    int-to-char v8, v8

    aput-char v8, v9, v7

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    new-array p1, v2, [B

    :goto_5
    if-ge p2, p3, :cond_a

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v2, v0, 0x1

    .line 992
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v4, v3, p2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 993
    aget-char v2, v3, p2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 995
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-object p1
.end method

.method public static final byte2hex([B)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    const-string v1, ""

    .line 1037
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1038
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1039
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1040
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1042
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1045
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1032
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument b ( byte array ) is null! "

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCurrentBytes(Landroid/content/Context;)[B
    .locals 6

    const-string v0, "LcdLog"

    const-string/jumbo v1, "singleMachine|getCurrentBytes"

    .line 40
    invoke-static {p0, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_da_table"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    .line 44
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->get_lcd_da_table_byte16()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    :cond_1
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 51
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HONG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v1, v2, :cond_4

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v1

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HTT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v1, v2, :cond_4

    .line 52
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object p0

    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->LK:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne p0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge p0, v1, :cond_3

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 58
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v5, v4, p0

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 59
    aget-char v3, v4, p0

    shr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 54
    :cond_4
    :goto_1
    sget-object p0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    return-object p0
.end method

.method public static final hex2byte(Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1011
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 1014
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1015
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 1016
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, p0, :cond_0

    .line 1017
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    aget-char v2, v0, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-char v2, v0, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    .line 1018
    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 1019
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    aput-byte v2, v1, v3

    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 1012
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static lod_test(Landroid/content/Context;)V
    .locals 1

    .line 98
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$1;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$1;->start()V

    return-void
.end method

.method public static refreshData([BLandroid/content/Context;)V
    .locals 5

    const-string v0, "LcdLog"

    const-string/jumbo v1, "singleMachine|refreshData"

    .line 237
    invoke-static {p1, v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 239
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    mul-int/lit8 v3, v0, 0x2

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v1, v4, 0x8

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    int-to-char v1, v1

    aput-char v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    const-string v0, "lcd_da_table"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static reportLcdInfor(Landroid/content/Context;)V
    .locals 8

    const-string v0, "lcd_da_table"

    :try_start_0
    const-string v1, "LcdLog"

    const-string v2, "70 09 singleMachine|getCurrentBytes"

    .line 198
    invoke-static {p0, v1, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->WLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    .line 206
    :cond_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->getIntance()Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/LcdShowManager;->get_lcd_da_table_byte16()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    :cond_1
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 213
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HONG:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_4

    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->HTT2:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-eq v2, v3, :cond_4

    .line 214
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->isYHT(Landroid/content/Context;)Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    move-result-object p0

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;->LK:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util$SingleSpinMachine;

    if-ne p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move p0, v5

    :goto_0
    const/16 v0, 0x8

    if-ge p0, v0, :cond_3

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 224
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v7, v7, p0

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    .line 225
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v3, v3, p0

    shr-int/lit8 v0, v3, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 227
    :cond_3
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    new-array v0, v6, [B

    aput-byte v4, v0, v5

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reporTestMcuInfor([B)V

    goto :goto_3

    :cond_4
    :goto_1
    move p0, v5

    :goto_2
    if-ge p0, v0, :cond_5

    .line 217
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table_byte16:[B

    aget-byte v2, v2, p0

    aput-byte v2, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 220
    :cond_5
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    new-array v0, v6, [B

    aput-byte v4, v0, v5

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reporTestMcuInfor([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 232
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static resettestLCD()V
    .locals 7

    const/4 v0, 0x0

    .line 77
    sput v0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->kkkk:I

    const/16 v1, 0x10

    :try_start_0
    new-array v2, v1, [B

    move v3, v0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v4, 0x1

    const/4 v6, -0x1

    .line 81
    aput-byte v6, v2, v5

    .line 82
    aput-byte v6, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_0
    sget v3, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->kkkk:I

    div-int/2addr v3, v1

    rsub-int/lit8 v1, v3, 0xf

    .line 85
    aget-byte v3, v2, v1

    sget v5, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->kkkk:I

    rem-int/2addr v5, v4

    const/4 v4, 0x1

    shl-int v5, v4, v5

    sub-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 87
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v1

    new-array v3, v4, [B

    const/16 v4, 0x9

    aput-byte v4, v3, v0

    invoke-static {v3, v2}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reporTestMcuInfor([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static start_KT2_Animation(Landroid/content/Context;)V
    .locals 6

    .line 523
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 524
    new-instance v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$2;

    invoke-direct {v1, p0}, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$2;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x258

    .line 584
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public static testLCD(Landroid/content/Context;)V
    .locals 11

    const-string p0, " "

    const/16 v0, 0x10

    :try_start_0
    new-array v1, v0, [B

    const/16 v2, 0x51

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0xc

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/4 v5, 0x2

    aput-byte v3, v1, v5

    const/4 v5, 0x3

    aput-byte v4, v1, v5

    const/4 v5, 0x4

    aput-byte v3, v1, v5

    const/4 v5, 0x5

    aput-byte v3, v1, v5

    const/4 v5, 0x6

    aput-byte v3, v1, v5

    const/4 v5, 0x7

    aput-byte v3, v1, v5

    const/16 v5, 0x8

    aput-byte v3, v1, v5

    const/16 v6, 0x9

    aput-byte v3, v1, v6

    const/16 v7, 0xa

    aput-byte v3, v1, v7

    const/16 v7, 0xb

    aput-byte v3, v1, v7

    aput-byte v3, v1, v2

    const/16 v2, 0xd

    aput-byte v3, v1, v2

    const/16 v2, 0xe

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    aput-byte v3, v1, v2

    move v7, v3

    :goto_0
    if-ge v7, v5, :cond_0

    mul-int/lit8 v8, v7, 0x2

    add-int/lit8 v9, v8, 0x1

    const/4 v10, -0x1

    .line 168
    aput-byte v10, v1, v9

    .line 169
    aput-byte v10, v1, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 171
    :cond_0
    sget v7, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->kkkk:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0x80

    const-string v9, "TESTLCD"

    if-ge v7, v8, :cond_1

    .line 172
    :try_start_1
    sget v7, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->kkkk:I

    add-int/2addr v7, v4

    sput v7, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->kkkk:I

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LcdLog70 09       Integer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->kkkk:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  Hex:0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->kkkk:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget v7, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->kkkk:I

    div-int/2addr v7, v5

    rsub-int/lit8 v7, v7, 0xf

    sget v8, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->kkkk:I

    div-int/2addr v8, v5

    sub-int/2addr v2, v8

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    sget v8, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->kkkk:I

    rem-int/2addr v8, v5

    shl-int v5, v4, v8

    sub-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v1, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    const-string v2, ""

    move-object v5, v2

    move v7, v3

    :goto_1
    if-ge v7, v0, :cond_2

    .line 184
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v1, v7

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v5, v1, v7

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 187
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reporTestMcuInfor Bytes:HEx "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reporTestMcuInfor Bytes:Bin "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p0

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reporTestMcuInfor([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 192
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

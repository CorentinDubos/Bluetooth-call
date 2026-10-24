.class Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$2;
.super Ljava/util/TimerTask;
.source "singleMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->start_KT2_Animation(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$2;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "lcd_da_table"

    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$2;->val$mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$2;->val$mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    .line 529
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->E_ICON_L2:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->ordinal()I

    move-result v1

    .line 530
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->E_ICON_L4:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->ordinal()I

    move-result v2

    .line 531
    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->E_ICON_l5:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->ordinal()I

    move-result v3

    .line 532
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->E_ICON_S1:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;

    invoke-virtual {v4}, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->ordinal()I

    move-result v4

    .line 533
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->E_ICON_S2:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;

    invoke-virtual {v5}, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->ordinal()I

    move-result v5

    .line 534
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->E_ICON_S3:Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;

    invoke-virtual {v6}, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2$ht2_icons;->ordinal()I

    move-result v6

    .line 535
    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v8, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v9, v7, v8

    sget-object v10, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v10, v10, v1

    iget-char v10, v10, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v7, v8

    .line 536
    sget v7, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->i:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    sput v7, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->i:I

    .line 537
    sget v7, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->i:I

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-ne v7, v9, :cond_1

    .line 538
    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v6, v4, v5

    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v1, v7, v1

    iget-char v1, v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    not-int v1, v1

    and-int/2addr v1, v6

    int-to-char v1, v1

    aput-char v1, v4, v5

    .line 539
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v5, v1, v4

    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v6, v2

    iget-char v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    not-int v2, v2

    and-int/2addr v2, v5

    int-to-char v2, v2

    aput-char v2, v1, v4

    .line 540
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v4, v1, v2

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v3, v5, v3

    iget-char v3, v3, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    not-int v3, v3

    and-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 544
    sput v10, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->i:I

    goto/16 :goto_0

    .line 546
    :cond_1
    sget v7, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->i:I

    if-eq v7, v8, :cond_4

    const/4 v1, 0x2

    if-eq v7, v1, :cond_3

    const/4 v1, 0x3

    if-eq v7, v1, :cond_2

    goto/16 :goto_0

    .line 563
    :cond_2
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v7, v1, v2

    sget-object v9, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v3, v9, v3

    iget-char v3, v3, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr v3, v7

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 564
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v3, v1, v2

    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v4, v7, v4

    iget-char v4, v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 565
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v3, v1, v2

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v4, v4, v5

    iget-char v4, v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 566
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v3, v1, v2

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v4, v4, v6

    iget-char v4, v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 567
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v3, v1, v2

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v4, v4, v6

    iget-char v4, v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    not-int v4, v4

    and-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    goto/16 :goto_0

    .line 556
    :cond_3
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v7, v1, v3

    sget-object v9, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v9, v2

    iget-char v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr v2, v7

    int-to-char v2, v2

    aput-char v2, v1, v3

    .line 557
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v3, v1, v2

    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v4, v7, v4

    iget-char v4, v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 558
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v3, v1, v2

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v4, v4, v5

    iget-char v4, v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 559
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v3, v1, v2

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v4, v4, v6

    iget-char v4, v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 560
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v3, v1, v2

    sget-object v4, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v4, v4, v5

    iget-char v4, v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    not-int v4, v4

    and-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    goto :goto_0

    .line 548
    :cond_4
    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v7, v2, v3

    sget-object v9, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v1, v9, v1

    iget-char v1, v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr v1, v7

    int-to-char v1, v1

    aput-char v1, v2, v3

    .line 550
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v3, v1, v2

    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v7, v7, v4

    iget-char v7, v7, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr v3, v7

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 551
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v3, v1, v2

    sget-object v7, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v5, v7, v5

    iget-char v5, v5, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr v3, v5

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 552
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v3, v1, v2

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v5, v5, v6

    iget-char v5, v5, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    or-int/2addr v3, v5

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 553
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    sget-object v2, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_pos:I

    aget-char v3, v1, v2

    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/lcd/KTMap2;->KT2_ICON_ATTRIBUTE_TABLE:[Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;

    aget-object v4, v5, v4

    iget-char v4, v4, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$ICON_ATTRIBUTE;->icon_bit:C

    not-int v4, v4

    and-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    :goto_0
    const/16 v1, 0x10

    new-array v1, v1, [B

    move v2, v10

    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_5

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v4, 0x1

    .line 574
    sget-object v6, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v6, v6, v2

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 575
    sget-object v5, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    aget-char v5, v5, v2

    shr-int/lit8 v3, v5, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 577
    :cond_5
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine$2;->val$mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/hzbhd/midwareproxy/canbus/lcd/singleMachine;->lcd_da_table:[C

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 578
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    new-array v2, v8, [B

    const/16 v3, 0x9

    aput-byte v3, v2, v10

    invoke-static {v2, v1}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->byteMerger([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->reporTestMcuInfor([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 580
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

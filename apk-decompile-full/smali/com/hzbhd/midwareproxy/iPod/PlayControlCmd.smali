.class public Lcom/hzbhd/midwareproxy/iPod/PlayControlCmd;
.super Ljava/lang/Object;
.source "PlayControlCmd.java"


# static fields
.field public static final CTL_END_FF_REW:B = 0x7t

.field public static final CTL_NEXT:B = 0x8t

.field public static final CTL_NEXT_CHAPTER:B = 0xct

.field public static final CTL_NEXT_TRACK:B = 0x3t

.field public static final CTL_PAUSE:B = 0xbt

.field public static final CTL_PLAY:B = 0xat

.field public static final CTL_PLAY_PAUSE:B = 0x1t

.field public static final CTL_PREVIOUS:B = 0x9t

.field public static final CTL_PRE_CHAPTER:B = 0xdt

.field public static final CTL_PRE_TRACK:B = 0x4t

.field public static final CTL_START_FF:B = 0x5t

.field public static final CTL_START_REW:B = 0x6t

.field public static final CTL_STOP:B = 0x2t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCmdDesc(B)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "CTL_PRE_CHAPTER"

    return-object p0

    :pswitch_1
    const-string p0, "CTL_NEXT_CHAPTER"

    return-object p0

    :pswitch_2
    const-string p0, "CTL_PAUSE"

    return-object p0

    :pswitch_3
    const-string p0, "CTL_PLAY"

    return-object p0

    :pswitch_4
    const-string p0, "CTL_PREVIOUS"

    return-object p0

    :pswitch_5
    const-string p0, "CTL_NEXT"

    return-object p0

    :pswitch_6
    const-string p0, "CTL_END_FF_REW"

    return-object p0

    :pswitch_7
    const-string p0, "CTL_START_REW"

    return-object p0

    :pswitch_8
    const-string p0, "CTL_START_FF"

    return-object p0

    :pswitch_9
    const-string p0, "CTL_PRE_TRACK"

    return-object p0

    :pswitch_a
    const-string p0, "CTL_NEXT_TRACK"

    return-object p0

    :pswitch_b
    const-string p0, "CTL_STOP"

    return-object p0

    :pswitch_c
    const-string p0, "CTL_PLAY_PAUSE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

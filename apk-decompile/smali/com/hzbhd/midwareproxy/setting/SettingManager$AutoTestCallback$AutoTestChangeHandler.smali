.class final Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback$AutoTestChangeHandler;
.super Landroid/os/Handler;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AutoTestChangeHandler"
.end annotation


# instance fields
.field private mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;)V
    .locals 0

    .line 2104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2105
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback$AutoTestChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 2110
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_8

    .line 2112
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2113
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 2114
    aget v4, v2, v3

    invoke-static {}, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestSource;->values()[Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestSource;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 2115
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback$AutoTestChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;

    aget v1, v2, v3

    invoke-static {v1}, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestSource;->getByIndex(I)Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;->onSourceChange(Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestSource;)V

    goto/16 :goto_8

    :cond_2
    const/16 v4, 0x301

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v0, v4, :cond_3

    .line 2117
    aget v0, v2, v3

    shl-int/lit8 v0, v0, 0x8

    aget v3, v2, v6

    or-int/2addr v0, v3

    .line 2118
    aget v3, v2, v5

    shl-int/lit8 v3, v3, 0x8

    aget v1, v2, v1

    or-int/2addr v1, v3

    .line 2119
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback$AutoTestChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;

    invoke-virtual {v2, v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;->onTrackChange(II)V

    goto/16 :goto_8

    :cond_3
    const/16 v1, 0x300

    if-ne v0, v1, :cond_6

    .line 2121
    aget v0, v2, v3

    if-ne v0, v6, :cond_4

    move v3, v6

    .line 2122
    :cond_4
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback$AutoTestChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;

    if-eqz v3, :cond_5

    sget-object v1, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;->prev:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;->next:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;->onDVDOprateChange(Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;)V

    goto/16 :goto_8

    :cond_6
    const/16 v1, 0x302

    if-ne v0, v1, :cond_7

    .line 2124
    aget v0, v2, v3

    add-int/2addr v0, v5

    invoke-static {}, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;->values()[Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 2125
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback$AutoTestChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;

    invoke-static {}, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;->values()[Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;

    move-result-object v1

    aget v2, v2, v3

    add-int/2addr v2, v5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;->onDVDOprateChange(Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestDVDOprate;)V

    goto/16 :goto_8

    :cond_7
    const/16 v1, 0x400

    if-ne v0, v1, :cond_9

    .line 2128
    array-length v0, v2

    new-array v0, v0, [B

    .line 2129
    :goto_2
    array-length v1, v2

    if-ge v3, v1, :cond_8

    .line 2130
    aget v1, v2, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2132
    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 2133
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback$AutoTestChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;->onBTNameChange(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_9
    const/16 v1, 0x401

    if-ne v0, v1, :cond_c

    .line 2135
    aget v0, v2, v3

    if-ne v0, v6, :cond_a

    move v3, v6

    .line 2136
    :cond_a
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback$AutoTestChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;

    if-eqz v3, :cond_b

    sget-object v1, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->music_next:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    goto :goto_3

    :cond_b
    sget-object v1, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->music_prev:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    :goto_3
    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;->onBTOprateChange(Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;)V

    goto/16 :goto_8

    :cond_c
    const/16 v1, 0x402

    if-ne v0, v1, :cond_f

    .line 2138
    aget v0, v2, v3

    if-nez v0, :cond_d

    move v3, v6

    .line 2139
    :cond_d
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback$AutoTestChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;

    if-eqz v3, :cond_e

    sget-object v1, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->music_play:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    goto :goto_4

    :cond_e
    sget-object v1, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->music_pause:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    :goto_4
    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;->onBTOprateChange(Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;)V

    goto/16 :goto_8

    :cond_f
    const/16 v1, 0x403

    if-ne v0, v1, :cond_12

    .line 2141
    aget v0, v2, v3

    if-ne v0, v6, :cond_10

    move v3, v6

    .line 2142
    :cond_10
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback$AutoTestChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;

    if-eqz v3, :cond_11

    sget-object v1, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->phone_hangup:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    goto :goto_5

    :cond_11
    sget-object v1, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->phone_answer:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    :goto_5
    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;->onBTOprateChange(Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;)V

    goto :goto_8

    :cond_12
    const/16 v1, 0x404

    if-ne v0, v1, :cond_14

    .line 2144
    array-length v0, v2

    new-array v0, v0, [B

    .line 2145
    :goto_6
    array-length v1, v2

    if-ge v3, v1, :cond_13

    .line 2146
    aget v1, v2, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2148
    :cond_13
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 2149
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback$AutoTestChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;->onBTCallNumberChange(Ljava/lang/String;)V

    goto :goto_8

    :cond_14
    const/16 v1, 0x405

    if-ne v0, v1, :cond_16

    .line 2151
    array-length v0, v2

    new-array v0, v0, [B

    .line 2152
    :goto_7
    array-length v1, v2

    if-ge v3, v1, :cond_15

    .line 2153
    aget v1, v2, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2155
    :cond_15
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 2156
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback$AutoTestChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;->onBTPinCodeChange(Ljava/lang/String;)V

    goto :goto_8

    :cond_16
    const v1, 0xff00

    and-int/2addr v1, v0

    const/16 v2, 0x500

    if-ne v1, v2, :cond_17

    .line 2158
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/setting/SettingManager$AutoTestCallback$AutoTestChangeHandler;->mListener:Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager$OnAutoTestChangeListener;->onNaviLocationChange()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 2160
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->access$400()Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;

    move-result-object v2

    and-int/lit16 v0, v0, 0xff

    invoke-interface {v2, v1, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISettingInterface;->setAutoTestLocationToPC(Landroid/location/Location;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 2167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2169
    :cond_17
    :goto_8
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.class public abstract Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;
.super Landroid/os/Binder;
.source "IMpegPlayerCallBackInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

.field static final TRANSACTION_discEjected:I = 0x1

.field static final TRANSACTION_discQueryEnd:I = 0x3

.field static final TRANSACTION_discQueryStart:I = 0x2

.field static final TRANSACTION_onDisplayInfo:I = 0xf

.field static final TRANSACTION_onID3Update:I = 0xc

.field static final TRANSACTION_onMcuDeviceChange:I = 0x15

.field static final TRANSACTION_onMpegInfos:I = 0xd

.field static final TRANSACTION_onMpegPassWordRSP:I = 0x12

.field static final TRANSACTION_onMpegPrint:I = 0x10

.field static final TRANSACTION_onMpegUpgradeInd:I = 0x11

.field static final TRANSACTION_onOtherKeyEvent:I = 0x14

.field static final TRANSACTION_onPlayInfoUpdate:I = 0xe

.field static final TRANSACTION_onPlayingStatusUpdate:I = 0xa

.field static final TRANSACTION_onPlayingTimeUpdate:I = 0x5

.field static final TRANSACTION_onRemoteDirect:I = 0x13

.field static final TRANSACTION_onReportDeviceStatus:I = 0x9

.field static final TRANSACTION_onScreenStatus:I = 0xb

.field static final TRANSACTION_playCDTrackUpdate:I = 0x6

.field static final TRANSACTION_playDVDRootMenuUpdate:I = 0x4

.field static final TRANSACTION_playDVDTitleChapterUpdate:I = 0x7

.field static final TRANSACTION_playROMFileUpdate:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 87
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    .line 98
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    if-eqz v1, :cond_1

    .line 100
    check-cast v0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    return-object v0

    .line 102
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;
    .locals 1

    .line 863
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;)Z
    .locals 1

    .line 856
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 857
    sput-object p0, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    move v0, p1

    move-object v1, p2

    const v2, 0x5f4e5446

    const/4 v10, 0x1

    const-string v3, "com.hzbhd.midwareproxy.binder.callback.IMpegPlayerCallBackInterface"

    if-eq v0, v2, :cond_9

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 379
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 366
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v2

    .line 370
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v10

    goto :goto_1

    :cond_1
    move v3, v2

    .line 372
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v2, v10

    .line 373
    :cond_2
    invoke-virtual {p0, v0, v3, v2}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->onMcuDeviceChange(ZZZ)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 357
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->onOtherKeyEvent(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 348
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 351
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->onRemoteDirect(I)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 339
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 342
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->onMpegPassWordRSP(I)V

    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 332
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->onMpegUpgradeInd()V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 323
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 326
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->onMpegPrint(I)V

    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 304
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 317
    invoke-virtual/range {v0 .. v6}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->onDisplayInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 281
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v11

    .line 298
    invoke-virtual/range {v0 .. v8}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->onPlayInfoUpdate(IIIIIIII)V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 258
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v8, v10

    goto :goto_2

    :cond_3
    move v8, v2

    .line 272
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v12, v10

    goto :goto_3

    :cond_4
    move v12, v2

    :goto_3
    move-object v0, p0

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v11

    move v8, v12

    .line 275
    invoke-virtual/range {v0 .. v8}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->onMpegInfos(IIIIIZIZ)V

    .line 276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 245
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {p0, v0, v2, v1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->onID3Update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 232
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v10

    goto :goto_4

    :cond_5
    move v0, v2

    .line 236
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v10

    goto :goto_5

    :cond_6
    move v3, v2

    .line 238
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    move v2, v10

    .line 239
    :cond_7
    invoke-virtual {p0, v0, v3, v2}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->onScreenStatus(ZZZ)V

    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 215
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 226
    invoke-virtual/range {v0 .. v5}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->onPlayingStatusUpdate(IIIII)V

    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 204
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->onReportDeviceStatus(II)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 191
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    invoke-virtual {p0, v0, v2, v1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->playROMFileUpdate(III)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 176
    :pswitch_e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->playDVDTitleChapterUpdate(IIII)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 165
    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 170
    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->playCDTrackUpdate(II)V

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 154
    :pswitch_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    invoke-virtual {p0, v0, v1}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->onPlayingTimeUpdate(II)V

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 145
    :pswitch_11
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v2, v10

    .line 148
    :cond_8
    invoke-virtual {p0, v2}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->playDVDRootMenuUpdate(Z)V

    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 138
    :pswitch_12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->discQueryEnd()V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 129
    :pswitch_13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->discQueryStart(I)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    .line 120
    :pswitch_14
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 123
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/callback/IMpegPlayerCallBackInterface$Stub;->discEjected(I)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_9
    move-object/from16 v0, p3

    .line 115
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

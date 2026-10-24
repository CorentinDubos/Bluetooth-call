.class public abstract Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;
.super Landroid/os/Binder;
.source "INowPlayingInfoListener.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

.field static final TRANSACTION_nowPlayingAlbum:I = 0x4

.field static final TRANSACTION_nowPlayingAlbumDiscCount:I = 0x8

.field static final TRANSACTION_nowPlayingAlbumDiscNum:I = 0x7

.field static final TRANSACTION_nowPlayingAlbumTrackCount:I = 0x6

.field static final TRANSACTION_nowPlayingAlbumTrackNum:I = 0x5

.field static final TRANSACTION_nowPlayingAppName:I = 0x19

.field static final TRANSACTION_nowPlayingArtist:I = 0x9

.field static final TRANSACTION_nowPlayingArtwork:I = 0x23

.field static final TRANSACTION_nowPlayingArtworkFileTransferId:I = 0x10

.field static final TRANSACTION_nowPlayingChapterCount:I = 0x11

.field static final TRANSACTION_nowPlayingComposer:I = 0xb

.field static final TRANSACTION_nowPlayingElapsedTimeMs:I = 0x13

.field static final TRANSACTION_nowPlayingGenre:I = 0xa

.field static final TRANSACTION_nowPlayingIsBanSupported:I = 0xd

.field static final TRANSACTION_nowPlayingIsBanned:I = 0xf

.field static final TRANSACTION_nowPlayingIsLikeSupported:I = 0xc

.field static final TRANSACTION_nowPlayingIsLiked:I = 0xe

.field static final TRANSACTION_nowPlayingMediaLibUniqueId:I = 0x1a

.field static final TRANSACTION_nowPlayingPersistentId:I = 0x1

.field static final TRANSACTION_nowPlayingPlayStatus:I = 0x12

.field static final TRANSACTION_nowPlayingPlaybackAppBundleID:I = 0x22

.field static final TRANSACTION_nowPlayingPlaybackDurationMs:I = 0x3

.field static final TRANSACTION_nowPlayingPlaybackQueueListAvailable:I = 0x20

.field static final TRANSACTION_nowPlayingPlaybackQueueListTransferID:I = 0x21

.field static final TRANSACTION_nowPlayingPlaybackSpeed:I = 0x1e

.field static final TRANSACTION_nowPlayingQueueChapterIndex:I = 0x16

.field static final TRANSACTION_nowPlayingQueueCount:I = 0x15

.field static final TRANSACTION_nowPlayingQueueIndex:I = 0x14

.field static final TRANSACTION_nowPlayingRepeatMode:I = 0x18

.field static final TRANSACTION_nowPlayingSetElapsedTimeAvailable:I = 0x1f

.field static final TRANSACTION_nowPlayingShuffleMode:I = 0x17

.field static final TRANSACTION_nowPlayingTitle:I = 0x2

.field static final TRANSACTION_nowPlayingiTunesRadioAd:I = 0x1b

.field static final TRANSACTION_nowPlayingiTunesRadioPlayListId:I = 0x1d

.field static final TRANSACTION_nowPlayingiTunesRadioStationName:I = 0x1c


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 135
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    .line 146
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    if-eqz v1, :cond_1

    .line 148
    check-cast v0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    return-object v0

    .line 150
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;
    .locals 1

    .line 1216
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;)Z
    .locals 1

    .line 1209
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1210
    sput-object p0, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.hzbhd.midwareproxy.iPod.iap2.INowPlayingInfoListener"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 483
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 474
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 477
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingArtwork([B)V

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 465
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 468
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingPlaybackAppBundleID(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 456
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 459
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingPlaybackQueueListTransferID(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 447
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 450
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingPlaybackQueueListAvailable(Z)V

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 438
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 441
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingSetElapsedTimeAvailable(Z)V

    .line 442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 429
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 432
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingPlaybackSpeed(I)V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 420
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 423
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingiTunesRadioPlayListId(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 411
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingiTunesRadioStationName(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 402
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 405
    :cond_2
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingiTunesRadioAd(Z)V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 393
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingMediaLibUniqueId(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 384
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 387
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingAppName(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 375
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 378
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingRepeatMode(B)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 366
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 369
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingShuffleMode(B)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 357
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingQueueChapterIndex(J)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 348
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 351
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingQueueCount(J)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 339
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingQueueIndex(J)V

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 330
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingElapsedTimeMs(J)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 321
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 324
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingPlayStatus(B)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 312
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 315
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingChapterCount(I)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 303
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 306
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingArtworkFileTransferId(B)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 294
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    .line 297
    :cond_3
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingIsBanned(Z)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 285
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v0, v1

    .line 288
    :cond_4
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingIsLiked(Z)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 276
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v0, v1

    .line 279
    :cond_5
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingIsBanSupported(Z)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 267
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    .line 270
    :cond_6
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingIsLikeSupported(Z)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 258
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingComposer(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 249
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingGenre(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 240
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingArtist(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 231
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 234
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingAlbumDiscCount(I)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 222
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 225
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingAlbumDiscNum(I)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 213
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 216
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingAlbumTrackCount(I)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 204
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 207
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingAlbumTrackNum(I)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 195
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingAlbum(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 186
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingPlaybackDurationMs(J)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 177
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingTitle(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 168
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/iap2/INowPlayingInfoListener$Stub;->nowPlayingPersistentId(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 163
    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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

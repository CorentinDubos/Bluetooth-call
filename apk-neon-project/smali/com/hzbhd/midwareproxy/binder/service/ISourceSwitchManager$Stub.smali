.class public abstract Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;
.super Landroid/os/Binder;
.source "ISourceSwitchManager.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

.field static final TRANSACTION_audioChannelRelease:I = 0x4

.field static final TRANSACTION_audioChannelRequest:I = 0x3

.field static final TRANSACTION_canAudioChannelRequest:I = 0x2

.field static final TRANSACTION_detectParkPanoramic:I = 0x1

.field static final TRANSACTION_getCurrentFrontSource:I = 0xb

.field static final TRANSACTION_getCurrentValidSource:I = 0x7

.field static final TRANSACTION_openRightVisualCamera:I = 0xc

.field static final TRANSACTION_pauseorresumeothercvbs:I = 0xd

.field static final TRANSACTION_releaseVideoChannel:I = 0x9

.field static final TRANSACTION_requestVideoChannel:I = 0x8

.field static final TRANSACTION_switchToNextSource:I = 0xa

.field static final TRANSACTION_videoChannelRelease:I = 0x6

.field static final TRANSACTION_videoChannelRequest:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    .line 71
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    .line 82
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    if-eqz v1, :cond_1

    .line 84
    check-cast v0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    return-object v0

    .line 86
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;
    .locals 1

    .line 611
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;)Z
    .locals 1

    .line 604
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 605
    sput-object p0, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.hzbhd.midwareproxy.binder.service.ISourceSwitchManager"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 269
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 259
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 262
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->pauseorresumeothercvbs(Z)Z

    move-result p1

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 250
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 253
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->openRightVisualCamera(Z)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 240
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 243
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getCurrentFrontSource(I)I

    move-result p1

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 233
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->switchToNextSource()V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 223
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 226
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->releaseVideoChannel(I)Z

    move-result p1

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 213
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 216
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->requestVideoChannel(I)Z

    move-result p1

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 203
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 206
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->getCurrentValidSource(I)I

    move-result p1

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 184
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 196
    :cond_2
    invoke-virtual {p0, p1, p4, v3}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->videoChannelRelease(IILandroid/os/Bundle;)Z

    move-result p1

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 165
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 177
    :cond_3
    invoke-virtual {p0, p1, p4, v3}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->videoChannelRequest(IILandroid/os/Bundle;)Z

    move-result p1

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 146
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 158
    :cond_4
    invoke-virtual {p0, p1, p4, v3}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->audioChannelRelease(IILandroid/os/Bundle;)Z

    move-result p1

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 127
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 139
    :cond_5
    invoke-virtual {p0, p1, p4, v3}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->audioChannelRequest(IILandroid/os/Bundle;)Z

    move-result p1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 115
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->canAudioChannelRequest(II)Z

    move-result p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 104
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    .line 108
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 109
    invoke-virtual {p0, v0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISourceSwitchManager$Stub;->detectParkPanoramic(ZI)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 99
    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

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

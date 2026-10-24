.class public abstract Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub;
.super Landroid/os/Binder;
.source "IBluetoothCallBackInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.binder.callback.IBluetoothCallBackInterface"

.field static final TRANSACTION_A2DPActionChanged:I = 0x6

.field static final TRANSACTION_A2dpPlayStateChanged:I = 0x9

.field static final TRANSACTION_BTAudioChannelRequest:I = 0x2

.field static final TRANSACTION_HFPActionChanged:I = 0x7

.field static final TRANSACTION_HFPMicStateChanged:I = 0xa

.field static final TRANSACTION_HFPSwitchStateChanged:I = 0xb

.field static final TRANSACTION_InquiryStateChanged:I = 0x5

.field static final TRANSACTION_MethodResultReturned:I = 0xc

.field static final TRANSACTION_newConnectionDevName:I = 0x8

.field static final TRANSACTION_newDevicePaired:I = 0x3

.field static final TRANSACTION_newDeviceSearch:I = 0x4

.field static final TRANSACTION_phoneBookSync:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.binder.callback.IBluetoothCallBackInterface"

    .line 60
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.binder.callback.IBluetoothCallBackInterface"

    .line 71
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface;

    if-eqz v1, :cond_1

    .line 73
    check-cast v0, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface;

    return-object v0

    .line 75
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface;
    .locals 1

    .line 509
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface;)Z
    .locals 1

    .line 502
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 503
    sput-object p0, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface;

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

    const-string v2, "com.hzbhd.midwareproxy.binder.callback.IBluetoothCallBackInterface"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 212
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 221
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub;->MethodResultReturned(IIII)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 203
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 206
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub;->HFPSwitchStateChanged(I)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 194
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 197
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub;->HFPMicStateChanged(I)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 185
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 188
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub;->A2dpPlayStateChanged(I)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 174
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub;->newConnectionDevName(ILjava/lang/String;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 163
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub;->HFPActionChanged(II)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 152
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub;->A2DPActionChanged(II)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 141
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub;->InquiryStateChanged(II)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 130
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub;->newDeviceSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 119
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub;->newDevicePaired(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 108
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 113
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub;->BTAudioChannelRequest(IZ)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 93
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 102
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/hzbhd/midwareproxy/binder/callback/IBluetoothCallBackInterface$Stub;->phoneBookSync(ILjava/lang/String;Ljava/lang/String;I)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 88
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.class public abstract Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Stub;
.super Landroid/os/Binder;
.source "IParkInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.binder.service.IParkInterface"

.field static final TRANSACTION_registerCallBack:I = 0x1

.field static final TRANSACTION_sendPanoramicParkKey:I = 0x4

.field static final TRANSACTION_sendPanoramicParkOn:I = 0x3

.field static final TRANSACTION_sendPanoramicParkPos:I = 0x6

.field static final TRANSACTION_sendPanoramicParkWH:I = 0x5

.field static final TRANSACTION_unRegisterCallBack:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.binder.service.IParkInterface"

    .line 40
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.binder.service.IParkInterface"

    .line 51
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    if-eqz v1, :cond_1

    .line 53
    check-cast v0, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    return-object v0

    .line 55
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;
    .locals 1

    .line 282
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;)Z
    .locals 1

    .line 275
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 276
    sput-object p0, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IParkInterface;

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

    const-string v2, "com.hzbhd.midwareproxy.binder.service.IParkInterface"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 118
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 125
    invoke-virtual {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Stub;->sendPanoramicParkPos(III)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 107
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Stub;->sendPanoramicParkWH(II)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 98
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Stub;->sendPanoramicParkKey(I)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 89
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 92
    :goto_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Stub;->sendPanoramicParkOn(Z)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 82
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Stub;->unRegisterCallBack()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 73
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/binder/callback/IParkCallBackInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/IParkCallBackInterface;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IParkInterface$Stub;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/IParkCallBackInterface;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 68
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

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

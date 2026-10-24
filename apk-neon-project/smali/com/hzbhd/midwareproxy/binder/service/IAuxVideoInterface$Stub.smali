.class public abstract Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;
.super Landroid/os/Binder;
.source "IAuxVideoInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.binder.service.IAuxVideoInterface"

.field static final TRANSACTION_getParingState:I = 0x3

.field static final TRANSACTION_getVideoFotmat:I = 0x2

.field static final TRANSACTION_getVideoState:I = 0x1

.field static final TRANSACTION_registerParkingCallback:I = 0x4

.field static final TRANSACTION_unregisterParkingCallback:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.binder.service.IAuxVideoInterface"

    .line 45
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.binder.service.IAuxVideoInterface"

    .line 56
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    if-eqz v1, :cond_1

    .line 58
    check-cast v0, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    return-object v0

    .line 60
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;
    .locals 1

    .line 266
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;)Z
    .locals 1

    .line 259
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 260
    sput-object p0, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface;

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

    const/4 v0, 0x1

    const-string v1, "com.hzbhd.midwareproxy.binder.service.IAuxVideoInterface"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 73
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 116
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface;

    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->unregisterParkingCallback(Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface;)Z

    move-result p1

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 106
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface;

    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->registerParkingCallback(Lcom/hzbhd/midwareproxy/binder/callback/IAuxVideoCallBackInterface;)Z

    move-result p1

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 98
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->getParingState()I

    move-result p1

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 88
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->getVideoFotmat(I)I

    move-result p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 78
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/IAuxVideoInterface$Stub;->getVideoState(I)I

    move-result p1

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

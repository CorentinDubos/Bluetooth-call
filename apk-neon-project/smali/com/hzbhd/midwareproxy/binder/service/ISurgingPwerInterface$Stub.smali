.class public abstract Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface$Stub;
.super Landroid/os/Binder;
.source "ISurgingPwerInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.binder.service.ISurgingPwerInterface"

.field static final TRANSACTION_registerCallBack:I = 0x2

.field static final TRANSACTION_sendMsg:I = 0x1

.field static final TRANSACTION_unRegisterCallBack:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISurgingPwerInterface"

    .line 40
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.binder.service.ISurgingPwerInterface"

    .line 51
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

    if-eqz v1, :cond_1

    .line 53
    check-cast v0, Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

    return-object v0

    .line 55
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;
    .locals 1

    .line 200
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;)Z
    .locals 1

    .line 193
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 194
    sput-object p0, Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface;

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

    const-string v1, "com.hzbhd.midwareproxy.binder.service.ISurgingPwerInterface"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 68
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 92
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface$Stub;->unRegisterCallBack(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 82
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/binder/callback/ISurgingPowerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/ISurgingPowerCallback;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface$Stub;->registerCallBack(Lcom/hzbhd/midwareproxy/binder/callback/ISurgingPowerCallback;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 73
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ISurgingPwerInterface$Stub;->sendMsg([B)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method

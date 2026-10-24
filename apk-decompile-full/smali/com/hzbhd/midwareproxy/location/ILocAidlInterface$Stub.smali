.class public abstract Lcom/hzbhd/midwareproxy/location/ILocAidlInterface$Stub;
.super Landroid/os/Binder;
.source "ILocAidlInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/location/ILocAidlInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.location.ILocAidlInterface"

.field static final TRANSACTION_addCallBack:I = 0x2

.field static final TRANSACTION_getSpeed:I = 0x1

.field static final TRANSACTION_removeCallBack:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.location.ILocAidlInterface"

    .line 37
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/location/ILocAidlInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.location.ILocAidlInterface"

    .line 48
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/location/ILocAidlInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/location/ILocAidlInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;
    .locals 1

    .line 194
    sget-object v0, Lcom/hzbhd/midwareproxy/location/ILocAidlInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;)Z
    .locals 1

    .line 187
    sget-object v0, Lcom/hzbhd/midwareproxy/location/ILocAidlInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 188
    sput-object p0, Lcom/hzbhd/midwareproxy/location/ILocAidlInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/location/ILocAidlInterface;

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

    const-string v1, "com.hzbhd.midwareproxy.location.ILocAidlInterface"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 65
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 89
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/location/LocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/location/LocationCallback;

    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/location/ILocAidlInterface$Stub;->removeCallBack(Lcom/hzbhd/midwareproxy/location/LocationCallback;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 80
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/location/LocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/location/LocationCallback;

    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/location/ILocAidlInterface$Stub;->addCallBack(Lcom/hzbhd/midwareproxy/location/LocationCallback;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 70
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/location/ILocAidlInterface$Stub;->getSpeed(I)I

    move-result p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.class public abstract Lcom/hzbhd/midwareproxy/location/LocationCallback$Stub;
.super Landroid/os/Binder;
.source "LocationCallback.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/location/LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/location/LocationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/location/LocationCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.location.LocationCallback"

.field static final TRANSACTION_getAltitude:I = 0x6

.field static final TRANSACTION_getBear:I = 0x4

.field static final TRANSACTION_getBearAndAltitude:I = 0x5

.field static final TRANSACTION_getLoc:I = 0x3

.field static final TRANSACTION_getMaxSatelliteCount:I = 0x2

.field static final TRANSACTION_getSpeed:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.location.LocationCallback"

    .line 43
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/location/LocationCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/location/LocationCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.location.LocationCallback"

    .line 54
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/location/LocationCallback;

    if-eqz v1, :cond_1

    .line 56
    check-cast v0, Lcom/hzbhd/midwareproxy/location/LocationCallback;

    return-object v0

    .line 58
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/location/LocationCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/location/LocationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/location/LocationCallback;
    .locals 1

    .line 285
    sget-object v0, Lcom/hzbhd/midwareproxy/location/LocationCallback$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/location/LocationCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/location/LocationCallback;)Z
    .locals 1

    .line 278
    sget-object v0, Lcom/hzbhd/midwareproxy/location/LocationCallback$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/location/LocationCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 279
    sput-object p0, Lcom/hzbhd/midwareproxy/location/LocationCallback$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/location/LocationCallback;

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

    const-string v2, "com.hzbhd.midwareproxy.location.LocationCallback"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 125
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p1

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/location/LocationCallback$Stub;->getAltitude(D)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 114
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 119
    invoke-virtual {p0, p1, v2, v3}, Lcom/hzbhd/midwareproxy/location/LocationCallback$Stub;->getBearAndAltitude(FD)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 105
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 108
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/location/LocationCallback$Stub;->getBear(F)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 94
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p1

    .line 99
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/hzbhd/midwareproxy/location/LocationCallback$Stub;->getLoc(DD)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 85
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/location/LocationCallback$Stub;->getMaxSatelliteCount(I)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 76
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/location/LocationCallback$Stub;->getSpeed(I)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 71
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

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

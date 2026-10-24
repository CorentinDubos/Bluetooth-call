.class public abstract Laidl/ICanbusAirChangeCallback$Stub;
.super Landroid/os/Binder;
.source "ICanbusAirChangeCallback.java"

# interfaces
.implements Laidl/ICanbusAirChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laidl/ICanbusAirChangeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laidl/ICanbusAirChangeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "aidl.ICanbusAirChangeCallback"

.field static final TRANSACTION_onBlowModeChange:I = 0x4

.field static final TRANSACTION_onBtnStatusChange:I = 0x5

.field static final TRANSACTION_onLeftTemperatureChange:I = 0x2

.field static final TRANSACTION_onRightTemperatureChange:I = 0x3

.field static final TRANSACTION_onWindSpeedChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "aidl.ICanbusAirChangeCallback"

    .line 39
    invoke-virtual {p0, p0, v0}, Laidl/ICanbusAirChangeCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Laidl/ICanbusAirChangeCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "aidl.ICanbusAirChangeCallback"

    .line 50
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    instance-of v1, v0, Laidl/ICanbusAirChangeCallback;

    if-eqz v1, :cond_1

    .line 52
    check-cast v0, Laidl/ICanbusAirChangeCallback;

    return-object v0

    .line 54
    :cond_1
    new-instance v0, Laidl/ICanbusAirChangeCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Laidl/ICanbusAirChangeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Laidl/ICanbusAirChangeCallback;
    .locals 1

    .line 255
    sget-object v0, Laidl/ICanbusAirChangeCallback$Stub$Proxy;->sDefaultImpl:Laidl/ICanbusAirChangeCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Laidl/ICanbusAirChangeCallback;)Z
    .locals 1

    .line 248
    sget-object v0, Laidl/ICanbusAirChangeCallback$Stub$Proxy;->sDefaultImpl:Laidl/ICanbusAirChangeCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 249
    sput-object p0, Laidl/ICanbusAirChangeCallback$Stub$Proxy;->sDefaultImpl:Laidl/ICanbusAirChangeCallback;

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

    const/4 v0, 0x1

    const-string v1, "aidl.ICanbusAirChangeCallback"

    if-eq p1, v0, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x3

    if-eq p1, v2, :cond_7

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 67
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 112
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v3, v0

    .line 117
    :cond_2
    invoke-virtual {p0, p1, v3}, Laidl/ICanbusAirChangeCallback$Stub;->onBtnStatusChange(Ljava/lang/String;Z)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 99
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_0

    :cond_4
    move p1, v3

    .line 103
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    move p4, v0

    goto :goto_1

    :cond_5
    move p4, v3

    .line 105
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_6

    move v3, v0

    .line 106
    :cond_6
    invoke-virtual {p0, p1, p4, v3}, Laidl/ICanbusAirChangeCallback$Stub;->onBlowModeChange(ZZZ)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 90
    :cond_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Laidl/ICanbusAirChangeCallback$Stub;->onRightTemperatureChange(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 81
    :cond_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Laidl/ICanbusAirChangeCallback$Stub;->onLeftTemperatureChange(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 72
    :cond_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 75
    invoke-virtual {p0, p1}, Laidl/ICanbusAirChangeCallback$Stub;->onWindSpeedChange(I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method

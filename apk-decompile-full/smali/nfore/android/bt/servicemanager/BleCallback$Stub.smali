.class public abstract Lnfore/android/bt/servicemanager/BleCallback$Stub;
.super Landroid/os/Binder;
.source "BleCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/BleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/BleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/BleCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nfore.android.bt.servicemanager.BleCallback"

.field static final TRANSACTION_onDataRcv:I = 0x3

.field static final TRANSACTION_onDeviceConnChange:I = 0x2

.field static final TRANSACTION_onDeviceScan:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "nfore.android.bt.servicemanager.BleCallback"

    .line 31
    invoke-virtual {p0, p0, v0}, Lnfore/android/bt/servicemanager/BleCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/BleCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "nfore.android.bt.servicemanager.BleCallback"

    .line 42
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Lnfore/android/bt/servicemanager/BleCallback;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lnfore/android/bt/servicemanager/BleCallback;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Lnfore/android/bt/servicemanager/BleCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lnfore/android/bt/servicemanager/BleCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lnfore/android/bt/servicemanager/BleCallback;
    .locals 1

    .line 180
    sget-object v0, Lnfore/android/bt/servicemanager/BleCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/BleCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lnfore/android/bt/servicemanager/BleCallback;)Z
    .locals 1

    .line 173
    sget-object v0, Lnfore/android/bt/servicemanager/BleCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/BleCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 174
    sput-object p0, Lnfore/android/bt/servicemanager/BleCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/BleCallback;

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

    const-string v1, "nfore.android.bt.servicemanager.BleCallback"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 59
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 82
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/BleCallback$Stub;->onDataRcv(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 73
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/BleCallback$Stub;->onDeviceConnChange([Ljava/lang/String;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 64
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/BleCallback$Stub;->onDeviceScan([Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method

.class public abstract Lnfore/android/bt/servicemanager/UiSppCallback$Stub;
.super Landroid/os/Binder;
.source "UiSppCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/UiSppCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/UiSppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/UiSppCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nfore.android.bt.servicemanager.UiSppCallback"

.field static final TRANSACTION_onSppDataReceived:I = 0x4

.field static final TRANSACTION_onSppErrorResponse:I = 0x2

.field static final TRANSACTION_onSppStateChanged:I = 0x1

.field static final TRANSACTION_retSppConnectedDeviceAddressList:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "nfore.android.bt.servicemanager.UiSppCallback"

    .line 78
    invoke-virtual {p0, p0, v0}, Lnfore/android/bt/servicemanager/UiSppCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiSppCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "nfore.android.bt.servicemanager.UiSppCallback"

    .line 89
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    instance-of v1, v0, Lnfore/android/bt/servicemanager/UiSppCallback;

    if-eqz v1, :cond_1

    .line 91
    check-cast v0, Lnfore/android/bt/servicemanager/UiSppCallback;

    return-object v0

    .line 93
    :cond_1
    new-instance v0, Lnfore/android/bt/servicemanager/UiSppCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lnfore/android/bt/servicemanager/UiSppCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lnfore/android/bt/servicemanager/UiSppCallback;
    .locals 1

    .line 316
    sget-object v0, Lnfore/android/bt/servicemanager/UiSppCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiSppCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lnfore/android/bt/servicemanager/UiSppCallback;)Z
    .locals 1

    .line 309
    sget-object v0, Lnfore/android/bt/servicemanager/UiSppCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiSppCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 310
    sput-object p0, Lnfore/android/bt/servicemanager/UiSppCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiSppCallback;

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

    const-string v1, "nfore.android.bt.servicemanager.UiSppCallback"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 106
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 150
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 155
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiSppCallback$Stub;->onSppDataReceived(Ljava/lang/String;[B)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 137
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 144
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/UiSppCallback$Stub;->retSppConnectedDeviceAddressList(I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 126
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 131
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiSppCallback$Stub;->onSppErrorResponse(Ljava/lang/String;I)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 111
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 120
    invoke-virtual {p0, p1, p4, v1, p2}, Lnfore/android/bt/servicemanager/UiSppCallback$Stub;->onSppStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method

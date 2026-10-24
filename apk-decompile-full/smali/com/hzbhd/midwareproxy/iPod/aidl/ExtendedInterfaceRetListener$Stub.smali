.class public abstract Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;
.super Landroid/os/Binder;
.source "ExtendedInterfaceRetListener.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.iPod.aidl.ExtendedInterfaceRetListener"

.field static final TRANSACTION_playStatusChangeNotification:I = 0x2

.field static final TRANSACTION_retDBTrackInfo:I = 0x4

.field static final TRANSACTION_retPBTrackInfo:I = 0x5

.field static final TRANSACTION_retUIDTrackInfo:I = 0x3

.field static final TRANSACTION_returnCategorizedDatabaseRecord:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.iPod.aidl.ExtendedInterfaceRetListener"

    .line 59
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.iPod.aidl.ExtendedInterfaceRetListener"

    .line 70
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;

    if-eqz v1, :cond_1

    .line 72
    check-cast v0, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;

    return-object v0

    .line 74
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;
    .locals 1

    .line 350
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;)Z
    .locals 1

    .line 343
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 344
    sput-object p0, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener;

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

    const-string v1, "com.hzbhd.midwareproxy.iPod.aidl.ExtendedInterfaceRetListener"

    if-eq p1, v0, :cond_9

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 87
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 155
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    sget-object v1, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;

    .line 167
    :cond_2
    invoke-virtual {p0, p1, p4, v3}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->retPBTrackInfo(BILcom/hzbhd/midwareproxy/iPod/TrackInformation;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 137
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    sget-object v1, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;

    .line 149
    :cond_4
    invoke-virtual {p0, p1, p4, v3}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->retDBTrackInfo(BILcom/hzbhd/midwareproxy/iPod/TrackInformation;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 119
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 126
    sget-object v1, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/hzbhd/midwareproxy/iPod/TrackInformation;

    .line 131
    :cond_6
    invoke-virtual {p0, p1, p4, v3}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->retUIDTrackInfo(B[BLcom/hzbhd/midwareproxy/iPod/TrackInformation;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 105
    :cond_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 108
    sget-object p1, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;

    .line 113
    :cond_8
    invoke-virtual {p0, v3}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->playStatusChangeNotification(Lcom/hzbhd/midwareproxy/iPod/PlayStatusNotification;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 92
    :cond_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 99
    invoke-virtual {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/iPod/aidl/ExtendedInterfaceRetListener$Stub;->returnCategorizedDatabaseRecord(BILjava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method

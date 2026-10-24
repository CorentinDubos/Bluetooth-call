.class public abstract Laidl/ICanbusInfoChangeCallback$Stub;
.super Landroid/os/Binder;
.source "ICanbusInfoChangeCallback.java"

# interfaces
.implements Laidl/ICanbusInfoChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laidl/ICanbusInfoChangeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laidl/ICanbusInfoChangeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "aidl.ICanbusInfoChangeCallback"

.field static final TRANSACTION_onBlowModeChange:I = 0x4

.field static final TRANSACTION_onBtnStatusChange:I = 0x5

.field static final TRANSACTION_onDoorStatusChange:I = 0x6

.field static final TRANSACTION_onLeftTemperatureChange:I = 0x2

.field static final TRANSACTION_onRightTemperatureChange:I = 0x3

.field static final TRANSACTION_onVoiceBcChange:I = 0x7

.field static final TRANSACTION_onWindSpeedChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "aidl.ICanbusInfoChangeCallback"

    .line 51
    invoke-virtual {p0, p0, v0}, Laidl/ICanbusInfoChangeCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Laidl/ICanbusInfoChangeCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "aidl.ICanbusInfoChangeCallback"

    .line 62
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    instance-of v1, v0, Laidl/ICanbusInfoChangeCallback;

    if-eqz v1, :cond_1

    .line 64
    check-cast v0, Laidl/ICanbusInfoChangeCallback;

    return-object v0

    .line 66
    :cond_1
    new-instance v0, Laidl/ICanbusInfoChangeCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Laidl/ICanbusInfoChangeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Laidl/ICanbusInfoChangeCallback;
    .locals 1

    .line 334
    sget-object v0, Laidl/ICanbusInfoChangeCallback$Stub$Proxy;->sDefaultImpl:Laidl/ICanbusInfoChangeCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Laidl/ICanbusInfoChangeCallback;)Z
    .locals 1

    .line 327
    sget-object v0, Laidl/ICanbusInfoChangeCallback$Stub$Proxy;->sDefaultImpl:Laidl/ICanbusInfoChangeCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 328
    sput-object p0, Laidl/ICanbusInfoChangeCallback$Stub$Proxy;->sDefaultImpl:Laidl/ICanbusInfoChangeCallback;

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

    const-string v2, "aidl.ICanbusInfoChangeCallback"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 146
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Laidl/ICanbusInfoChangeCallback$Stub;->onVoiceBcChange(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 135
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v0, v1

    .line 140
    :cond_0
    invoke-virtual {p0, p1, v0}, Laidl/ICanbusInfoChangeCallback$Stub;->onDoorStatusChange(Ljava/lang/String;Z)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 124
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    .line 129
    :cond_1
    invoke-virtual {p0, p1, v0}, Laidl/ICanbusInfoChangeCallback$Stub;->onBtnStatusChange(Ljava/lang/String;Z)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 111
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v0

    .line 115
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    move p4, v1

    goto :goto_1

    :cond_3
    move p4, v0

    .line 117
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_4

    move v0, v1

    .line 118
    :cond_4
    invoke-virtual {p0, p1, p4, v0}, Laidl/ICanbusInfoChangeCallback$Stub;->onBlowModeChange(ZZZ)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 102
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Laidl/ICanbusInfoChangeCallback$Stub;->onRightTemperatureChange(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 93
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Laidl/ICanbusInfoChangeCallback$Stub;->onLeftTemperatureChange(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 84
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 87
    invoke-virtual {p0, p1}, Laidl/ICanbusInfoChangeCallback$Stub;->onWindSpeedChange(I)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 79
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

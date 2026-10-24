.class public abstract Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;
.super Landroid/os/Binder;
.source "ICameraCallback.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.binder.callback.ICameraCallback"

.field static final TRANSACTION_onCameraClose:I = 0x6

.field static final TRANSACTION_onCameraOpen:I = 0x5

.field static final TRANSACTION_onSignalCahnge:I = 0x7

.field static final TRANSACTION_onSurfaceDestroy:I = 0x4

.field static final TRANSACTION_onSurfaceViewCreate:I = 0x3

.field static final TRANSACTION_onViewAdd:I = 0x1

.field static final TRANSACTION_onViewRemove:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.binder.callback.ICameraCallback"

    .line 45
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.binder.callback.ICameraCallback"

    .line 56
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    if-eqz v1, :cond_1

    .line 58
    check-cast v0, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    return-object v0

    .line 60
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;
    .locals 1

    .line 292
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;)Z
    .locals 1

    .line 285
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 286
    sput-object p0, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

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

    const-string v2, "com.hzbhd.midwareproxy.binder.callback.ICameraCallback"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 120
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 123
    :goto_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->onSignalCahnge(Z)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 113
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->onCameraClose()V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 106
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->onCameraOpen()V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 99
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->onSurfaceDestroy()V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 92
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->onSurfaceViewCreate()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 85
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->onViewRemove()V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 78
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->onViewAdd()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 73
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

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

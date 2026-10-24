.class public abstract Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub;
.super Landroid/os/Binder;
.source "ICameraInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hzbhd.midwareproxy.binder.service.ICameraInterface"

.field static final TRANSACTION_addCameraCallback:I = 0x1

.field static final TRANSACTION_addWindow:I = 0x3

.field static final TRANSACTION_cameraEnable:I = 0x9

.field static final TRANSACTION_cameraStateChange:I = 0x8

.field static final TRANSACTION_removeCameraCallback:I = 0x2

.field static final TRANSACTION_removeWindow:I = 0x4

.field static final TRANSACTION_setAnalogInputColor:I = 0x6

.field static final TRANSACTION_setSurfaceViewParam:I = 0xa

.field static final TRANSACTION_stopPreview:I = 0x7

.field static final TRANSACTION_switchCamera:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ICameraInterface"

    .line 54
    invoke-virtual {p0, p0, v0}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.hzbhd.midwareproxy.binder.service.ICameraInterface"

    .line 65
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    instance-of v1, v0, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    if-eqz v1, :cond_1

    .line 67
    check-cast v0, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    return-object v0

    .line 69
    :cond_1
    new-instance v0, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;
    .locals 1

    .line 412
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;)Z
    .locals 1

    .line 405
    sget-object v0, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 406
    sput-object p0, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub$Proxy;->sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface;

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

    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICameraInterface"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 166
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 175
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub;->setSurfaceViewParam(IIFF)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 157
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 160
    :goto_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub;->cameraEnable(Z)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 150
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub;->cameraStateChange()V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 143
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub;->stopPreview()V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 130
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 137
    invoke-virtual {p0, p1, p4, p2}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub;->setAnalogInputColor(III)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 121
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub;->switchCamera(I)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 114
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub;->removeWindow()V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 105
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 108
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub;->addWindow(I)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 96
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub;->removeCameraCallback(Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 87
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;

    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICameraInterface$Stub;->addCameraCallback(Lcom/hzbhd/midwareproxy/binder/callback/ICameraCallback;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 82
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public abstract Lnfore/android/bt/servicemanager/IHspCallback$Stub;
.super Landroid/os/Binder;
.source "IHspCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/IHspCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/IHspCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/IHspCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nfore.android.bt.servicemanager.IHspCallback"

.field static final TRANSACTION_onHspErrorResponse:I = 0x3

.field static final TRANSACTION_onHspMicVolumeChanged:I = 0x6

.field static final TRANSACTION_onHspNewIncomingCall:I = 0x4

.field static final TRANSACTION_onHspScoStateChanged:I = 0x2

.field static final TRANSACTION_onHspSpeakerVolumeChanged:I = 0x5

.field static final TRANSACTION_onHspStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "nfore.android.bt.servicemanager.IHspCallback"

    .line 123
    invoke-virtual {p0, p0, v0}, Lnfore/android/bt/servicemanager/IHspCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IHspCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "nfore.android.bt.servicemanager.IHspCallback"

    .line 134
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    instance-of v1, v0, Lnfore/android/bt/servicemanager/IHspCallback;

    if-eqz v1, :cond_1

    .line 136
    check-cast v0, Lnfore/android/bt/servicemanager/IHspCallback;

    return-object v0

    .line 138
    :cond_1
    new-instance v0, Lnfore/android/bt/servicemanager/IHspCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lnfore/android/bt/servicemanager/IHspCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lnfore/android/bt/servicemanager/IHspCallback;
    .locals 1

    .line 467
    sget-object v0, Lnfore/android/bt/servicemanager/IHspCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IHspCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lnfore/android/bt/servicemanager/IHspCallback;)Z
    .locals 1

    .line 460
    sget-object v0, Lnfore/android/bt/servicemanager/IHspCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IHspCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 461
    sput-object p0, Lnfore/android/bt/servicemanager/IHspCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IHspCallback;

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

    const-string v2, "nfore.android.bt.servicemanager.IHspCallback"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 219
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 226
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/IHspCallback$Stub;->onHspMicVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 206
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 213
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/IHspCallback$Stub;->onHspSpeakerVolumeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 197
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/IHspCallback$Stub;->onHspNewIncomingCall(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 186
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 191
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/IHspCallback$Stub;->onHspErrorResponse(Ljava/lang/String;I)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 171
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 180
    invoke-virtual {p0, p1, p4, v0, p2}, Lnfore/android/bt/servicemanager/IHspCallback$Stub;->onHspScoStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 156
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 165
    invoke-virtual {p0, p1, p4, v0, p2}, Lnfore/android/bt/servicemanager/IHspCallback$Stub;->onHspStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 151
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

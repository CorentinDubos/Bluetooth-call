.class Lcom/hzbhd/midwareproxy/binder/service/ICanbusAirService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICanbusAirService.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/binder/service/ICanbusAirService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/binder/service/ICanbusAirService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/binder/service/ICanbusAirService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusAirService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusAirService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public canbusAirInfoChange([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.binder.service.ICanbusAirService"

    .line 99
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 101
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/binder/service/ICanbusAirService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusAirService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusAirService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 103
    invoke-static {}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusAirService$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/binder/service/ICanbusAirService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusAirService;->canbusAirInfoChange([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 106
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 111
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.binder.service.ICanbusAirService"

    return-object v0
.end method

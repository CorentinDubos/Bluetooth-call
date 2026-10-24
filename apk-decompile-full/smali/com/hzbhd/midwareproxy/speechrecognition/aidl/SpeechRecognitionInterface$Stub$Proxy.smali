.class Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "SpeechRecognitionInterface.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public closeApp(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.SpeechRecognitionInterface"

    .line 111
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 115
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;->closeApp(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 117
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    move v3, v4

    .line 121
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p1

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 123
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hzbhd.midwareproxy.speechrecognition.aidl.SpeechRecognitionInterface"

    return-object v0
.end method

.method public openApp(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.hzbhd.midwareproxy.speechrecognition.aidl.SpeechRecognitionInterface"

    .line 132
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 136
    invoke-static {}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface$Stub;->getDefaultImpl()Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/hzbhd/midwareproxy/speechrecognition/aidl/SpeechRecognitionInterface;->openApp(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 138
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 142
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    throw p1
.end method

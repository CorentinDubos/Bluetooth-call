.class public final Lcom/hzbhd/bluetooth/bean/BluetoothDevice;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"


# instance fields
.field private category:I

.field private isA2dpConnected:Z

.field private isHfpConnected:Z

.field private isMaster:Z

.field private isPaired:Z

.field private mAddress:Ljava/lang/String;

.field private mDevAdr:[B

.field private mDevID:I

.field private mRemoteDevName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->mDevAdr:[B

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->mDevID:I

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->category:I

    return v0
.end method

.method public getDevAdr()[B
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->mDevAdr:[B

    return-object v0
.end method

.method public getDevID()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->mDevID:I

    return v0
.end method

.method public getRemoteDevName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->mRemoteDevName:Ljava/lang/String;

    return-object v0
.end method

.method public isA2dpConnected()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->isA2dpConnected:Z

    return v0
.end method

.method public isHfpConnected()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->isHfpConnected:Z

    return v0
.end method

.method public isMaster()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->isMaster:Z

    return v0
.end method

.method public isPaired()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->isPaired:Z

    return v0
.end method

.method public setA2dpConnected(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->isA2dpConnected:Z

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setCategory(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->category:I

    return-void
.end method

.method public setDevAdr([B)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->mDevAdr:[B

    return-void
.end method

.method public setDevID(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->mDevID:I

    return-void
.end method

.method public setHfpConnected(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->isHfpConnected:Z

    return-void
.end method

.method public setMaster(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->isMaster:Z

    return-void
.end method

.method public setPaired(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->isPaired:Z

    return-void
.end method

.method public setRemoteDevName(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->mRemoteDevName:Ljava/lang/String;

    return-void
.end method

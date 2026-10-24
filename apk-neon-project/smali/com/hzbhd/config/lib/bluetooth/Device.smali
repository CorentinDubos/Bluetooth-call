.class public Lcom/hzbhd/config/lib/bluetooth/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private address:Ljava/lang/String;

.field private isA2dpConn:Z

.field private isHfpConn:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/hzbhd/config/lib/bluetooth/Device;->address:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/hzbhd/config/lib/bluetooth/Device;->name:Ljava/lang/String;

    .line 12
    iput-boolean p3, p0, Lcom/hzbhd/config/lib/bluetooth/Device;->isHfpConn:Z

    .line 13
    iput-boolean p4, p0, Lcom/hzbhd/config/lib/bluetooth/Device;->isA2dpConn:Z

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/hzbhd/config/lib/bluetooth/Device;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/hzbhd/config/lib/bluetooth/Device;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isA2dpConn()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/hzbhd/config/lib/bluetooth/Device;->isA2dpConn:Z

    return v0
.end method

.method public isHfpConn()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/hzbhd/config/lib/bluetooth/Device;->isHfpConn:Z

    return v0
.end method

.method public setA2dpConn(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/hzbhd/config/lib/bluetooth/Device;->isA2dpConn:Z

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/hzbhd/config/lib/bluetooth/Device;->address:Ljava/lang/String;

    return-void
.end method

.method public setHfpConn(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/hzbhd/config/lib/bluetooth/Device;->isHfpConn:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/hzbhd/config/lib/bluetooth/Device;->name:Ljava/lang/String;

    return-void
.end method

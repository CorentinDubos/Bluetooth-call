.class public Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;
.super Ljava/lang/Object;
.source "BlueToothBean.java"


# instance fields
.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;->name:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;->number:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;->number:Ljava/lang/String;

    return-void
.end method

.class public Lcom/hzbhd/config/device/Device;
.super Ljava/lang/Object;
.source "Device.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/hzbhd/config/device/Device;",
        "",
        "()V",
        "BUILD_JENKINS",
        "",
        "getBUILD_JENKINS",
        "()Ljava/lang/String;",
        "setBUILD_JENKINS",
        "(Ljava/lang/String;)V",
        "CFG_BUILD_MODEM",
        "getCFG_BUILD_MODEM",
        "setCFG_BUILD_MODEM",
        "device"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private BUILD_JENKINS:Ljava/lang/String;

.field private CFG_BUILD_MODEM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "true"

    .line 9
    iput-object v0, p0, Lcom/hzbhd/config/device/Device;->BUILD_JENKINS:Ljava/lang/String;

    const-string v0, "false"

    .line 14
    iput-object v0, p0, Lcom/hzbhd/config/device/Device;->CFG_BUILD_MODEM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBUILD_JENKINS()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/hzbhd/config/device/Device;->BUILD_JENKINS:Ljava/lang/String;

    return-object v0
.end method

.method public getCFG_BUILD_MODEM()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/hzbhd/config/device/Device;->CFG_BUILD_MODEM:Ljava/lang/String;

    return-object v0
.end method

.method public setBUILD_JENKINS(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/hzbhd/config/device/Device;->BUILD_JENKINS:Ljava/lang/String;

    return-void
.end method

.method public setCFG_BUILD_MODEM(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/hzbhd/config/device/Device;->CFG_BUILD_MODEM:Ljava/lang/String;

    return-void
.end method

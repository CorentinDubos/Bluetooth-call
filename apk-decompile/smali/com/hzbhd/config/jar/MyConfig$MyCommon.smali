.class public final Lcom/hzbhd/config/jar/MyConfig$MyCommon;
.super Lcom/hzbhd/config/base/Config$Common;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/jar/MyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyCommon"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\tH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/hzbhd/config/jar/MyConfig$MyCommon;",
        "Lcom/hzbhd/config/base/Config$Common;",
        "(Lcom/hzbhd/config/jar/MyConfig;)V",
        "isNewDefaultSaredUtil",
        "",
        "()Z",
        "setNewDefaultSaredUtil",
        "(Z)V",
        "addDualScreenServiceToServiceManager",
        "",
        "context",
        "Landroid/content/Context;",
        "hideOrShowDualScreenMain",
        "Config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private isNewDefaultSaredUtil:Z

.field final synthetic this$0:Lcom/hzbhd/config/jar/MyConfig;


# direct methods
.method public constructor <init>(Lcom/hzbhd/config/jar/MyConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/hzbhd/config/jar/MyConfig$MyCommon;->this$0:Lcom/hzbhd/config/jar/MyConfig;

    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Common;-><init>()V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/hzbhd/config/jar/MyConfig$MyCommon;->isNewDefaultSaredUtil:Z

    return-void
.end method


# virtual methods
.method public addDualScreenServiceToServiceManager(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->addServiceToServiceManager(Landroid/content/Context;)V

    return-void
.end method

.method public hideOrShowDualScreenMain()V
    .locals 1

    .line 19
    invoke-static {}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->getInstance()Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/dualscreen/DualScreenManager;->showOrHideInMain()V

    return-void
.end method

.method public isNewDefaultSaredUtil()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/hzbhd/config/jar/MyConfig$MyCommon;->isNewDefaultSaredUtil:Z

    return v0
.end method

.method public setNewDefaultSaredUtil(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/hzbhd/config/jar/MyConfig$MyCommon;->isNewDefaultSaredUtil:Z

    return-void
.end method

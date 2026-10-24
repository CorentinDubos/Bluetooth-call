.class public Lcom/hzbhd/config/base/Config$Common;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Common"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0017H\u0016R&\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u000eR\u001a\u0010\u0011\u001a\u00020\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\"\u0004\u0008\u0012\u0010\u000eR&\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\t\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Common;",
        "",
        "()V",
        "bgList",
        "Ljava/util/HashMap;",
        "",
        "getBgList",
        "()Ljava/util/HashMap;",
        "setBgList",
        "(Ljava/util/HashMap;)V",
        "isHasTwoLandUiAndPortrateUi",
        "",
        "()Z",
        "setHasTwoLandUiAndPortrateUi",
        "(Z)V",
        "isNewDefaultSaredUtil",
        "setNewDefaultSaredUtil",
        "isNoSetBg",
        "setNoSetBg",
        "splitBgList",
        "getSplitBgList",
        "setSplitBgList",
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
.field private bgList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isHasTwoLandUiAndPortrateUi:Z

.field private isNewDefaultSaredUtil:Z

.field private isNoSetBg:Z

.field private splitBgList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/hzbhd/config/base/Config$Common$bgList$1;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Common$bgList$1;-><init>()V

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/hzbhd/config/base/Config$Common;->bgList:Ljava/util/HashMap;

    .line 93
    new-instance v0, Lcom/hzbhd/config/base/Config$Common$splitBgList$1;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Common$splitBgList$1;-><init>()V

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/hzbhd/config/base/Config$Common;->splitBgList:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addDualScreenServiceToServiceManager(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getBgList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Common;->bgList:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSplitBgList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Common;->splitBgList:Ljava/util/HashMap;

    return-object v0
.end method

.method public hideOrShowDualScreenMain()V
    .locals 0

    return-void
.end method

.method public isHasTwoLandUiAndPortrateUi()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Common;->isHasTwoLandUiAndPortrateUi:Z

    return v0
.end method

.method public isNewDefaultSaredUtil()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Common;->isNewDefaultSaredUtil:Z

    return v0
.end method

.method public isNoSetBg()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Common;->isNoSetBg:Z

    return v0
.end method

.method public setBgList(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Common;->bgList:Ljava/util/HashMap;

    return-void
.end method

.method public setHasTwoLandUiAndPortrateUi(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Common;->isHasTwoLandUiAndPortrateUi:Z

    return-void
.end method

.method public setNewDefaultSaredUtil(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Common;->isNewDefaultSaredUtil:Z

    return-void
.end method

.method public setNoSetBg(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Common;->isNoSetBg:Z

    return-void
.end method

.method public setSplitBgList(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Common;->splitBgList:Ljava/util/HashMap;

    return-void
.end method

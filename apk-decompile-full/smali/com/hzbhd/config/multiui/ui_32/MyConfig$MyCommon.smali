.class public final Lcom/hzbhd/config/multiui/ui_32/MyConfig$MyCommon;
.super Lcom/hzbhd/config/base/Config$Common;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_32/MyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyCommon"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR&\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_32/MyConfig$MyCommon;",
        "Lcom/hzbhd/config/base/Config$Common;",
        "()V",
        "bgList",
        "Ljava/util/HashMap;",
        "",
        "getBgList",
        "()Ljava/util/HashMap;",
        "setBgList",
        "(Ljava/util/HashMap;)V",
        "splitBgList",
        "getSplitBgList",
        "setSplitBgList",
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

    .line 9
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Common;-><init>()V

    .line 10
    new-instance v0, Lcom/hzbhd/config/multiui/ui_32/MyConfig$MyCommon$bgList$1;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_32/MyConfig$MyCommon$bgList$1;-><init>()V

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_32/MyConfig$MyCommon;->bgList:Ljava/util/HashMap;

    .line 24
    new-instance v0, Lcom/hzbhd/config/multiui/ui_32/MyConfig$MyCommon$splitBgList$1;

    invoke-direct {v0}, Lcom/hzbhd/config/multiui/ui_32/MyConfig$MyCommon$splitBgList$1;-><init>()V

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_32/MyConfig$MyCommon;->splitBgList:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
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

    .line 10
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_32/MyConfig$MyCommon;->bgList:Ljava/util/HashMap;

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

    .line 24
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_32/MyConfig$MyCommon;->splitBgList:Ljava/util/HashMap;

    return-object v0
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

    .line 10
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_32/MyConfig$MyCommon;->bgList:Ljava/util/HashMap;

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

    .line 24
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_32/MyConfig$MyCommon;->splitBgList:Ljava/util/HashMap;

    return-void
.end method

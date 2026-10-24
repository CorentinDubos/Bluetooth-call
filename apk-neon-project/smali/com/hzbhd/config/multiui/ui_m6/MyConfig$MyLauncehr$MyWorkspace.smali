.class public final Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyWorkspace;
.super Lcom/hzbhd/config/base/Config$Launcher$Workspace;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyWorkspace"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyWorkspace;",
        "Lcom/hzbhd/config/base/Config$Launcher$Workspace;",
        "(Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr;)V",
        "getCustomLayoutArrays",
        "",
        "",
        "()[Ljava/lang/String;",
        "getDefaultIconArray",
        "Ljava/util/ArrayList;",
        "Lcom/hzbhd/config/lib/launcher/ComponentPosition;",
        "getMargin",
        "",
        "getPadding",
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
.field final synthetic this$0:Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr;


# direct methods
.method public constructor <init>(Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr$MyWorkspace;->this$0:Lcom/hzbhd/config/multiui/ui_m6/MyConfig$MyLauncehr;

    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$Workspace;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomLayoutArrays()[Ljava/lang/String;
    .locals 2

    const-string v0, "__m6__first_screen"

    const-string v1, "__m6__second_screen"

    .line 90
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultIconArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/hzbhd/config/lib/launcher/ComponentPosition;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMargin()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 91
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3ec00000    # 0.375f
        0x3d0f5c29    # 0.035f
        0x3c75c28f    # 0.015f
        0x0
    .end array-data
.end method

.method public getPadding()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 92
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3e19999a    # 0.15f
        0x0
        0x0
    .end array-data
.end method

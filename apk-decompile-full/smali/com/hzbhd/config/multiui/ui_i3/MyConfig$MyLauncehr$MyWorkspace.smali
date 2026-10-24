.class public final Lcom/hzbhd/config/multiui/ui_i3/MyConfig$MyLauncehr$MyWorkspace;
.super Lcom/hzbhd/config/base/Config$Launcher$Workspace;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_i3/MyConfig$MyLauncehr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyWorkspace"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_i3/MyConfig$MyLauncehr$MyWorkspace;",
        "Lcom/hzbhd/config/base/Config$Launcher$Workspace;",
        "()V",
        "getCustomLayoutArrays",
        "",
        "",
        "()[Ljava/lang/String;",
        "getDefaultIconArray",
        "Ljava/util/ArrayList;",
        "Lcom/hzbhd/config/lib/launcher/ComponentPosition;",
        "getLayout_height",
        "",
        "getMargin",
        "",
        "getPadding",
        "getRule",
        "",
        "Config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$Workspace;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomLayoutArrays()[Ljava/lang/String;
    .locals 2

    const-string v0, "__i3__first_screen_view"

    const-string v1, "__i3__second_screen_view"

    .line 76
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

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getLayout_height()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMargin()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 77
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

.method public getPadding()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 78
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getRule()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    return-object v0
.end method

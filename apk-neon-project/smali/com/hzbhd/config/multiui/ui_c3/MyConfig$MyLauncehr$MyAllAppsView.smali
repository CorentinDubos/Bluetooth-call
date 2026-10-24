.class public final Lcom/hzbhd/config/multiui/ui_c3/MyConfig$MyLauncehr$MyAllAppsView;
.super Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_c3/MyConfig$MyLauncehr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyAllAppsView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\nH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_c3/MyConfig$MyLauncehr$MyAllAppsView;",
        "Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;",
        "()V",
        "appMargin",
        "",
        "getAppMargin",
        "()[F",
        "setAppMargin",
        "([F)V",
        "ySize",
        "",
        "getYSize",
        "()I",
        "setYSize",
        "(I)V",
        "getxSize",
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
.field private appMargin:[F

.field private ySize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Launcher$AllAppsView;-><init>()V

    const/4 v0, 0x3

    .line 61
    iput v0, p0, Lcom/hzbhd/config/multiui/ui_c3/MyConfig$MyLauncehr$MyAllAppsView;->ySize:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 62
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_c3/MyConfig$MyLauncehr$MyAllAppsView;->appMargin:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3c23d70a    # 0.01f
    .end array-data
.end method


# virtual methods
.method public getAppMargin()[F
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_c3/MyConfig$MyLauncehr$MyAllAppsView;->appMargin:[F

    return-object v0
.end method

.method public getYSize()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/hzbhd/config/multiui/ui_c3/MyConfig$MyLauncehr$MyAllAppsView;->ySize:I

    return v0
.end method

.method public getxSize()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public setAppMargin([F)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_c3/MyConfig$MyLauncehr$MyAllAppsView;->appMargin:[F

    return-void
.end method

.method public setYSize(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/hzbhd/config/multiui/ui_c3/MyConfig$MyLauncehr$MyAllAppsView;->ySize:I

    return-void
.end method

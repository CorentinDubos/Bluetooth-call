.class public Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyMenuBar;
.super Lcom/hzbhd/config/base/Config$SideMenuBar;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_f8/MyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyMenuBar"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyMenuBar;",
        "Lcom/hzbhd/config/base/Config$SideMenuBar;",
        "()V",
        "barLayoutId",
        "",
        "getBarLayoutId",
        "()Ljava/lang/String;",
        "setBarLayoutId",
        "(Ljava/lang/String;)V",
        "height",
        "",
        "getHeight",
        "()I",
        "setHeight",
        "(I)V",
        "width",
        "getWidth",
        "setWidth",
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
.field private barLayoutId:Ljava/lang/String;

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$SideMenuBar;-><init>()V

    const-string v0, "__f8__side_menu_bar"

    .line 117
    iput-object v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyMenuBar;->barLayoutId:Ljava/lang/String;

    const/16 v0, 0x74

    .line 118
    iput v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyMenuBar;->width:I

    const/16 v0, 0x2d0

    .line 119
    iput v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyMenuBar;->height:I

    return-void
.end method


# virtual methods
.method public getBarLayoutId()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyMenuBar;->barLayoutId:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyMenuBar;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyMenuBar;->width:I

    return v0
.end method

.method public setBarLayoutId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyMenuBar;->barLayoutId:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyMenuBar;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/hzbhd/config/multiui/ui_f8/MyConfig$MyMenuBar;->width:I

    return-void
.end method

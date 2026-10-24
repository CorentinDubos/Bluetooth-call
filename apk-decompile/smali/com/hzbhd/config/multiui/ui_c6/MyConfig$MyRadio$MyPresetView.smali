.class public final Lcom/hzbhd/config/multiui/ui_c6/MyConfig$MyRadio$MyPresetView;
.super Lcom/hzbhd/config/base/Config$Radio$PresetView;
.source "MyConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/multiui/ui_c6/MyConfig$MyRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyPresetView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/hzbhd/config/multiui/ui_c6/MyConfig$MyRadio$MyPresetView;",
        "Lcom/hzbhd/config/base/Config$Radio$PresetView;",
        "()V",
        "getLayout",
        "",
        "getLayout_height",
        "",
        "getLayout_width",
        "getMargin",
        "",
        "getPadding",
        "getType",
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

    .line 99
    invoke-direct {p0}, Lcom/hzbhd/config/base/Config$Radio$PresetView;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayout()Ljava/lang/String;
    .locals 1

    const-string v0, "__c6__preset_view"

    return-object v0
.end method

.method public getLayout_height()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getLayout_width()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getMargin()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 104
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3e4ccccd    # 0.2f
        0x0
        0x3d4ccccd    # 0.05f
    .end array-data
.end method

.method public getPadding()[F
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 105
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

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

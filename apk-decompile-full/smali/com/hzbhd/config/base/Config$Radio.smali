.class public Lcom/hzbhd/config/base/Config$Radio;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Radio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/config/base/Config$Radio$Common;,
        Lcom/hzbhd/config/base/Config$Radio$PresetView;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001:\u0002\u0014\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0016\u00a2\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0016\u00a2\u0006\u0002\u0010\u0012R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Radio;",
        "",
        "()V",
        "common",
        "Lcom/hzbhd/config/base/Config$Radio$Common;",
        "getCommon",
        "()Lcom/hzbhd/config/base/Config$Radio$Common;",
        "setCommon",
        "(Lcom/hzbhd/config/base/Config$Radio$Common;)V",
        "presetView",
        "Lcom/hzbhd/config/base/Config$Radio$PresetView;",
        "getPresetView",
        "()Lcom/hzbhd/config/base/Config$Radio$PresetView;",
        "setPresetView",
        "(Lcom/hzbhd/config/base/Config$Radio$PresetView;)V",
        "getHXDActivity",
        "",
        "",
        "()[Ljava/lang/String;",
        "getKCActivity",
        "Common",
        "PresetView",
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
.field private common:Lcom/hzbhd/config/base/Config$Radio$Common;

.field private presetView:Lcom/hzbhd/config/base/Config$Radio$PresetView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    new-instance v0, Lcom/hzbhd/config/base/Config$Radio$PresetView;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Radio$PresetView;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config$Radio;->presetView:Lcom/hzbhd/config/base/Config$Radio$PresetView;

    .line 725
    new-instance v0, Lcom/hzbhd/config/base/Config$Radio$Common;

    invoke-direct {v0}, Lcom/hzbhd/config/base/Config$Radio$Common;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/config/base/Config$Radio;->common:Lcom/hzbhd/config/base/Config$Radio$Common;

    return-void
.end method


# virtual methods
.method public getCommon()Lcom/hzbhd/config/base/Config$Radio$Common;
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Radio;->common:Lcom/hzbhd/config/base/Config$Radio$Common;

    return-object v0
.end method

.method public getHXDActivity()[Ljava/lang/String;
    .locals 3

    const-string v0, "A3"

    const-string v1, "07"

    const-string v2, "D6"

    .line 736
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKCActivity()[Ljava/lang/String;
    .locals 62

    const-string v0, "0A"

    const-string v1, "0C"

    const-string v2, "0D"

    const-string v3, "0F"

    const-string v4, "0G"

    const-string v5, "0K"

    const-string v6, "0M"

    const-string v7, "0N"

    const-string v8, "0W"

    const-string v9, "0Z"

    const-string v10, "12"

    const-string v11, "19"

    const-string v12, "23"

    const-string v13, "29"

    const-string v14, "31"

    const-string v15, "47"

    const-string v16, "53"

    const-string v17, "55"

    const-string v18, "55"

    const-string v19, "57"

    const-string v20, "58"

    const-string v21, "63"

    const-string v22, "65"

    const-string v23, "66"

    const-string v24, "67"

    const-string v25, "73"

    const-string v26, "77"

    const-string v27, "79"

    const-string v28, "80"

    const-string v29, "83"

    const-string v30, "84"

    const-string v31, "88"

    const-string v32, "89"

    const-string v33, "94"

    const-string v34, "98"

    const-string v35, "A5"

    const-string v36, "F1"

    const-string v37, "G1"

    const-string v38, "H1"

    const-string v39, "K1"

    const-string v40, "L1"

    const-string v41, "M1"

    const-string v42, "M5"

    const-string v43, "N1"

    const-string v44, "N3"

    const-string v45, "C3"

    const-string v46, "L2"

    const-string v47, "C4"

    const-string v48, "C7"

    const-string v49, "C9"

    const-string v50, "D5"

    const-string v51, "C8"

    const-string v52, "D8"

    const-string v53, "D9"

    const-string v54, "E7"

    const-string v55, "E6"

    const-string v56, "M7"

    const-string v57, "F6"

    const-string v58, "G2"

    const-string v59, "G6"

    const-string v60, "H3"

    const-string v61, "G8"

    .line 731
    filled-new-array/range {v0 .. v61}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPresetView()Lcom/hzbhd/config/base/Config$Radio$PresetView;
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Radio;->presetView:Lcom/hzbhd/config/base/Config$Radio$PresetView;

    return-object v0
.end method

.method public setCommon(Lcom/hzbhd/config/base/Config$Radio$Common;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Radio;->common:Lcom/hzbhd/config/base/Config$Radio$Common;

    return-void
.end method

.method public setPresetView(Lcom/hzbhd/config/base/Config$Radio$PresetView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Radio;->presetView:Lcom/hzbhd/config/base/Config$Radio$PresetView;

    return-void
.end method

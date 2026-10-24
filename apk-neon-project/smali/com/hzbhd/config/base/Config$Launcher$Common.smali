.class public Lcom/hzbhd/config/base/Config$Launcher$Common;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/base/Config$Launcher;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008,\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\u001a\u0010\u001e\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R\u001a\u0010!\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u000c\"\u0004\u0008\"\u0010\u000eR\u001a\u0010#\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u000c\"\u0004\u0008$\u0010\u000eR\u001a\u0010%\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u000c\"\u0004\u0008&\u0010\u000eR\u001a\u0010\'\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u000c\"\u0004\u0008(\u0010\u000eR\u001a\u0010)\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u000c\"\u0004\u0008*\u0010\u000eR\u001a\u0010+\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u000c\"\u0004\u0008,\u0010\u000eR\u001a\u0010-\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u000c\"\u0004\u0008.\u0010\u000eR\u001a\u0010/\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u000c\"\u0004\u00080\u0010\u000eR\u001a\u00101\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u000c\"\u0004\u00082\u0010\u000eR\u001a\u00103\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u000c\"\u0004\u00084\u0010\u000eR\u001a\u00105\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u000c\"\u0004\u00086\u0010\u000eR\u001a\u00107\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u000c\"\u0004\u00088\u0010\u000eR\u001a\u00109\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\u000c\"\u0004\u0008:\u0010\u000eR\u001a\u0010;\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u000c\"\u0004\u0008<\u0010\u000eR\u001a\u0010=\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\u000c\"\u0004\u0008>\u0010\u000eR\u001a\u0010?\u001a\u00020\u0016X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010\u0018\"\u0004\u0008A\u0010\u001aR&\u0010B\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040CX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\u001a\u0010H\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010\u0006\"\u0004\u0008J\u0010\u0008R\u001a\u0010K\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010\u000c\"\u0004\u0008M\u0010\u000eR\u001a\u0010N\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010\u000c\"\u0004\u0008P\u0010\u000eR\u001a\u0010Q\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010\u0012\"\u0004\u0008S\u0010\u0014R\u001a\u0010T\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010\u0006\"\u0004\u0008V\u0010\u0008R\u001a\u0010W\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010\u0006\"\u0004\u0008Y\u0010\u0008\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/hzbhd/config/base/Config$Launcher$Common;",
        "",
        "()V",
        "appIconLayout",
        "",
        "getAppIconLayout",
        "()Ljava/lang/String;",
        "setAppIconLayout",
        "(Ljava/lang/String;)V",
        "bLinkShowFrame",
        "",
        "getBLinkShowFrame",
        "()Z",
        "setBLinkShowFrame",
        "(Z)V",
        "bhdAppsSizeScale",
        "",
        "getBhdAppsSizeScale",
        "()F",
        "setBhdAppsSizeScale",
        "(F)V",
        "diffWallpaperSize",
        "",
        "getDiffWallpaperSize",
        "()I",
        "setDiffWallpaperSize",
        "(I)V",
        "folderIconLayout",
        "getFolderIconLayout",
        "setFolderIconLayout",
        "hotseatIconLayout",
        "getHotseatIconLayout",
        "setHotseatIconLayout",
        "isHaveAllApp",
        "setHaveAllApp",
        "isHaveBackground",
        "setHaveBackground",
        "isHaveBhdApp",
        "setHaveBhdApp",
        "isHaveIndicator",
        "setHaveIndicator",
        "isHavePreinstallHandbook",
        "setHavePreinstallHandbook",
        "isHaveThirdApp",
        "setHaveThirdApp",
        "isHaveTouch",
        "setHaveTouch",
        "isHaveWorkspace",
        "setHaveWorkspace",
        "isHideNavigationBar",
        "setHideNavigationBar",
        "isIconUseDrawable",
        "setIconUseDrawable",
        "isListenerWallpaperPicker",
        "setListenerWallpaperPicker",
        "isShowDefaultApp",
        "setShowDefaultApp",
        "isShowDynamicWallpaper",
        "setShowDynamicWallpaper",
        "isShowSetWallpaperIcon",
        "setShowSetWallpaperIcon",
        "isSpecialBigWallpaper",
        "setSpecialBigWallpaper",
        "maxWallpaperSize",
        "getMaxWallpaperSize",
        "setMaxWallpaperSize",
        "reAppName",
        "Ljava/util/HashMap;",
        "getReAppName",
        "()Ljava/util/HashMap;",
        "setReAppName",
        "(Ljava/util/HashMap;)V",
        "servicesName",
        "getServicesName",
        "setServicesName",
        "showAllWeek",
        "getShowAllWeek",
        "setShowAllWeek",
        "showNaviName",
        "getShowNaviName",
        "setShowNaviName",
        "thirdAppsSizeScale",
        "getThirdAppsSizeScale",
        "setThirdAppsSizeScale",
        "wallpaperLayout",
        "getWallpaperLayout",
        "setWallpaperLayout",
        "workspaeIconLayout",
        "getWorkspaeIconLayout",
        "setWorkspaeIconLayout",
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
.field private appIconLayout:Ljava/lang/String;

.field private bLinkShowFrame:Z

.field private bhdAppsSizeScale:F

.field private diffWallpaperSize:I

.field private folderIconLayout:Ljava/lang/String;

.field private hotseatIconLayout:Ljava/lang/String;

.field private isHaveAllApp:Z

.field private isHaveBackground:Z

.field private isHaveBhdApp:Z

.field private isHaveIndicator:Z

.field private isHavePreinstallHandbook:Z

.field private isHaveThirdApp:Z

.field private isHaveTouch:Z

.field private isHaveWorkspace:Z

.field private isHideNavigationBar:Z

.field private isIconUseDrawable:Z

.field private isListenerWallpaperPicker:Z

.field private isShowDefaultApp:Z

.field private isShowDynamicWallpaper:Z

.field private isShowSetWallpaperIcon:Z

.field private isSpecialBigWallpaper:Z

.field private maxWallpaperSize:I

.field private reAppName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private servicesName:Ljava/lang/String;

.field private showAllWeek:Z

.field private showNaviName:Z

.field private thirdAppsSizeScale:F

.field private wallpaperLayout:Ljava/lang/String;

.field private workspaeIconLayout:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveBackground:Z

    .line 154
    iput-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveWorkspace:Z

    .line 164
    iput-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveBhdApp:Z

    .line 169
    iput-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveThirdApp:Z

    .line 174
    iput-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveIndicator:Z

    .line 179
    iput-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveTouch:Z

    const-string v1, "__01__app_icon"

    .line 189
    iput-object v1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->appIconLayout:Ljava/lang/String;

    .line 194
    iput-object v1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->workspaeIconLayout:Ljava/lang/String;

    .line 199
    iput-object v1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->hotseatIconLayout:Ljava/lang/String;

    const-string v1, "folder_icon"

    .line 204
    iput-object v1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->folderIconLayout:Ljava/lang/String;

    const-string v1, "activity_wallpaper_picker"

    .line 209
    iput-object v1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->wallpaperLayout:Ljava/lang/String;

    const/16 v1, 0x47

    .line 219
    iput v1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->maxWallpaperSize:I

    const-string v1, ""

    .line 230
    iput-object v1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->servicesName:Ljava/lang/String;

    .line 240
    new-instance v1, Lcom/hzbhd/config/base/Config$Launcher$Common$reAppName$1;

    invoke-direct {v1}, Lcom/hzbhd/config/base/Config$Launcher$Common$reAppName$1;-><init>()V

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->reAppName:Ljava/util/HashMap;

    .line 254
    iput-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->bLinkShowFrame:Z

    .line 269
    iput-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isShowDynamicWallpaper:Z

    .line 288
    iput-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->showNaviName:Z

    const v0, 0x3f4ccccd    # 0.8f

    .line 293
    iput v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->thirdAppsSizeScale:F

    .line 298
    iput v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->bhdAppsSizeScale:F

    return-void
.end method


# virtual methods
.method public getAppIconLayout()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->appIconLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getBLinkShowFrame()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->bLinkShowFrame:Z

    return v0
.end method

.method public getBhdAppsSizeScale()F
    .locals 1

    .line 298
    iget v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->bhdAppsSizeScale:F

    return v0
.end method

.method public getDiffWallpaperSize()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->diffWallpaperSize:I

    return v0
.end method

.method public getFolderIconLayout()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->folderIconLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getHotseatIconLayout()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->hotseatIconLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxWallpaperSize()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->maxWallpaperSize:I

    return v0
.end method

.method public getReAppName()Ljava/util/HashMap;
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

    .line 240
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->reAppName:Ljava/util/HashMap;

    return-object v0
.end method

.method public getServicesName()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->servicesName:Ljava/lang/String;

    return-object v0
.end method

.method public getShowAllWeek()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->showAllWeek:Z

    return v0
.end method

.method public getShowNaviName()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->showNaviName:Z

    return v0
.end method

.method public getThirdAppsSizeScale()F
    .locals 1

    .line 293
    iget v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->thirdAppsSizeScale:F

    return v0
.end method

.method public getWallpaperLayout()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->wallpaperLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkspaeIconLayout()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->workspaeIconLayout:Ljava/lang/String;

    return-object v0
.end method

.method public isHaveAllApp()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveAllApp:Z

    return v0
.end method

.method public isHaveBackground()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveBackground:Z

    return v0
.end method

.method public isHaveBhdApp()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveBhdApp:Z

    return v0
.end method

.method public isHaveIndicator()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveIndicator:Z

    return v0
.end method

.method public isHavePreinstallHandbook()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHavePreinstallHandbook:Z

    return v0
.end method

.method public isHaveThirdApp()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveThirdApp:Z

    return v0
.end method

.method public isHaveTouch()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveTouch:Z

    return v0
.end method

.method public isHaveWorkspace()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveWorkspace:Z

    return v0
.end method

.method public isHideNavigationBar()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHideNavigationBar:Z

    return v0
.end method

.method public isIconUseDrawable()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isIconUseDrawable:Z

    return v0
.end method

.method public isListenerWallpaperPicker()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isListenerWallpaperPicker:Z

    return v0
.end method

.method public isShowDefaultApp()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isShowDefaultApp:Z

    return v0
.end method

.method public isShowDynamicWallpaper()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isShowDynamicWallpaper:Z

    return v0
.end method

.method public isShowSetWallpaperIcon()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isShowSetWallpaperIcon:Z

    return v0
.end method

.method public isSpecialBigWallpaper()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isSpecialBigWallpaper:Z

    return v0
.end method

.method public setAppIconLayout(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->appIconLayout:Ljava/lang/String;

    return-void
.end method

.method public setBLinkShowFrame(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->bLinkShowFrame:Z

    return-void
.end method

.method public setBhdAppsSizeScale(F)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->bhdAppsSizeScale:F

    return-void
.end method

.method public setDiffWallpaperSize(I)V
    .locals 0

    .line 214
    iput p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->diffWallpaperSize:I

    return-void
.end method

.method public setFolderIconLayout(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->folderIconLayout:Ljava/lang/String;

    return-void
.end method

.method public setHaveAllApp(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveAllApp:Z

    return-void
.end method

.method public setHaveBackground(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveBackground:Z

    return-void
.end method

.method public setHaveBhdApp(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveBhdApp:Z

    return-void
.end method

.method public setHaveIndicator(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveIndicator:Z

    return-void
.end method

.method public setHavePreinstallHandbook(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHavePreinstallHandbook:Z

    return-void
.end method

.method public setHaveThirdApp(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveThirdApp:Z

    return-void
.end method

.method public setHaveTouch(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveTouch:Z

    return-void
.end method

.method public setHaveWorkspace(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHaveWorkspace:Z

    return-void
.end method

.method public setHideNavigationBar(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isHideNavigationBar:Z

    return-void
.end method

.method public setHotseatIconLayout(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->hotseatIconLayout:Ljava/lang/String;

    return-void
.end method

.method public setIconUseDrawable(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isIconUseDrawable:Z

    return-void
.end method

.method public setListenerWallpaperPicker(Z)V
    .locals 0

    .line 274
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isListenerWallpaperPicker:Z

    return-void
.end method

.method public setMaxWallpaperSize(I)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->maxWallpaperSize:I

    return-void
.end method

.method public setReAppName(Ljava/util/HashMap;)V
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

    .line 240
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->reAppName:Ljava/util/HashMap;

    return-void
.end method

.method public setServicesName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->servicesName:Ljava/lang/String;

    return-void
.end method

.method public setShowAllWeek(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->showAllWeek:Z

    return-void
.end method

.method public setShowDefaultApp(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isShowDefaultApp:Z

    return-void
.end method

.method public setShowDynamicWallpaper(Z)V
    .locals 0

    .line 269
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isShowDynamicWallpaper:Z

    return-void
.end method

.method public setShowNaviName(Z)V
    .locals 0

    .line 288
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->showNaviName:Z

    return-void
.end method

.method public setShowSetWallpaperIcon(Z)V
    .locals 0

    .line 249
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isShowSetWallpaperIcon:Z

    return-void
.end method

.method public setSpecialBigWallpaper(Z)V
    .locals 0

    .line 283
    iput-boolean p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->isSpecialBigWallpaper:Z

    return-void
.end method

.method public setThirdAppsSizeScale(F)V
    .locals 0

    .line 293
    iput p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->thirdAppsSizeScale:F

    return-void
.end method

.method public setWallpaperLayout(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->wallpaperLayout:Ljava/lang/String;

    return-void
.end method

.method public setWorkspaeIconLayout(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iput-object p1, p0, Lcom/hzbhd/config/base/Config$Launcher$Common;->workspaeIconLayout:Ljava/lang/String;

    return-void
.end method

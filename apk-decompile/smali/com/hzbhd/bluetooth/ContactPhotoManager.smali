.class public abstract Lcom/hzbhd/bluetooth/ContactPhotoManager;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/ContactPhotoManager$BlankDefaultImageProvider;,
        Lcom/hzbhd/bluetooth/ContactPhotoManager$AvatarDefaultImageProvider;,
        Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;
    }
.end annotation


# static fields
.field public static final CONTACT_PHOTO_SERVICE:Ljava/lang/String; = "contactPhotos"

.field static final DEBUG:Z = true

.field static final DEBUG_SIZES:Z = false

.field public static final DEFAULT_AVATAR:Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;

.field public static final DEFAULT_BLANK:Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;

.field static final TAG:Ljava/lang/String; = "ContactPhotoManager"

.field private static s180DipInPixel:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 139
    new-instance v0, Lcom/hzbhd/bluetooth/ContactPhotoManager$AvatarDefaultImageProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hzbhd/bluetooth/ContactPhotoManager$AvatarDefaultImageProvider;-><init>(Lcom/hzbhd/bluetooth/ContactPhotoManager$1;)V

    sput-object v0, Lcom/hzbhd/bluetooth/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;

    .line 141
    new-instance v0, Lcom/hzbhd/bluetooth/ContactPhotoManager$BlankDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/hzbhd/bluetooth/ContactPhotoManager$BlankDefaultImageProvider;-><init>(Lcom/hzbhd/bluetooth/ContactPhotoManager$1;)V

    sput-object v0, Lcom/hzbhd/bluetooth/ContactPhotoManager;->DEFAULT_BLANK:Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/hzbhd/bluetooth/ContactPhotoManager;
    .locals 2

    const-class v0, Lcom/hzbhd/bluetooth/ContactPhotoManager;

    monitor-enter v0

    .line 159
    :try_start_0
    new-instance v1, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getDefaultAvatarResId(Landroid/content/Context;IZ)I
    .locals 3

    .line 88
    sget v0, Lcom/hzbhd/bluetooth/ContactPhotoManager;->s180DipInPixel:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x43340000    # 180.0f

    .line 91
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 90
    invoke-static {v1, v0, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    sput p0, Lcom/hzbhd/bluetooth/ContactPhotoManager;->s180DipInPixel:I

    :cond_0
    if-eq p1, v2, :cond_1

    .line 94
    sget p0, Lcom/hzbhd/bluetooth/ContactPhotoManager;->s180DipInPixel:I

    if-le p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 95
    :goto_0
    invoke-static {v1, p2}, Lcom/hzbhd/bluetooth/ContactPhotoManager;->getDefaultAvatarResId(ZZ)I

    move-result p0

    return p0
.end method

.method public static getDefaultAvatarResId(ZZ)I
    .locals 0

    if-eqz p1, :cond_2

    .line 104
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object p0

    const-string p1, "N52"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f08041d

    return p0

    :cond_0
    const p0, 0x7f040014

    .line 105
    invoke-static {p0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p0

    const/16 p1, 0xb1

    if-ne p0, p1, :cond_1

    const p0, 0x7f080bda

    return p0

    :cond_1
    const p0, 0x7f0816e5

    return p0

    :cond_2
    const p0, 0x7f081822

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/hzbhd/bluetooth/ContactPhotoManager;
    .locals 3

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "contactPhotos"

    .line 150
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 152
    invoke-static {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/hzbhd/bluetooth/ContactPhotoManager;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No contact photo service in context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ContactPhotoManager"

    invoke-static {v1, p0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract cacheBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
.end method

.method public final loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;Z)V
    .locals 6

    .line 209
    sget-object v5, Lcom/hzbhd/bluetooth/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/hzbhd/bluetooth/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;)V

    return-void
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V
    .locals 6

    .line 201
    sget-object v5, Lcom/hzbhd/bluetooth/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hzbhd/bluetooth/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;)V

    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public final loadThumbnail(Landroid/widget/ImageView;JZ)V
    .locals 6

    .line 175
    sget-object v5, Lcom/hzbhd/bluetooth/ContactPhotoManager;->DEFAULT_AVATAR:Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hzbhd/bluetooth/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZLcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;)V

    return-void
.end method

.method public abstract loadThumbnail(Landroid/widget/ImageView;JZLcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract preloadPhotosInBackground()V
.end method

.method public abstract refreshCache()V
.end method

.method public abstract removePhoto(Landroid/widget/ImageView;)V
.end method

.method public abstract resume()V
.end method

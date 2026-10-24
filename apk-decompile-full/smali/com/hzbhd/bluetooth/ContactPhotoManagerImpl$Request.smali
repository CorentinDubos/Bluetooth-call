.class final Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Request"
.end annotation


# instance fields
.field private final mDarkTheme:Z

.field private final mDefaultProvider:Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;

.field private final mId:J

.field private final mRequestedExtent:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(JLandroid/net/Uri;IZLcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;)V
    .locals 0

    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    iput-wide p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mId:J

    .line 1177
    iput-object p3, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    .line 1178
    iput-boolean p5, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    .line 1179
    iput p4, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    .line 1180
    iput-object p6, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mDefaultProvider:Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;

    return-void
.end method

.method static synthetic access$100(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;)J
    .locals 2

    .line 1167
    iget-wide v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mId:J

    return-wide v0
.end method

.method public static createFromThumbnailId(JZLcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;)Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;
    .locals 8

    .line 1185
    new-instance v7, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, v7

    move-wide v1, p0

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;IZLcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;)V

    return-object v7
.end method

.method public static createFromUri(Landroid/net/Uri;IZLcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;)Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;
    .locals 8

    .line 1190
    new-instance v7, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;

    const-wide/16 v1, 0x0

    move-object v0, v7

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;IZLcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;)V

    return-object v7
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;)V
    .locals 3

    .line 1240
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mDefaultProvider:Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;

    iget v1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    iget-boolean v2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZ)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1223
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 1224
    :cond_2
    check-cast p1, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;

    .line 1225
    iget-wide v2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mId:J

    iget-wide v4, p1, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    .line 1226
    :cond_3
    iget v2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    iget v3, p1, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    if-eq v2, v3, :cond_4

    return v1

    .line 1227
    :cond_4
    iget-object v2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-static {v2, p1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getId()J
    .locals 2

    .line 1202
    iget-wide v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mId:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    .line 1236
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRequestedExtent()I
    .locals 1

    .line 1206
    iget v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1198
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1213
    iget-wide v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mId:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 1214
    iget v2, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1215
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isUriRequest()Z
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

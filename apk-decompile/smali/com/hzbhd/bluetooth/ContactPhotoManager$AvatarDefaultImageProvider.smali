.class Lcom/hzbhd/bluetooth/ContactPhotoManager$AvatarDefaultImageProvider;
.super Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvatarDefaultImageProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hzbhd/bluetooth/ContactPhotoManager$1;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManager$AvatarDefaultImageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;IZ)V
    .locals 1

    .line 121
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/hzbhd/bluetooth/ContactPhotoManager;->getDefaultAvatarResId(Landroid/content/Context;IZ)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

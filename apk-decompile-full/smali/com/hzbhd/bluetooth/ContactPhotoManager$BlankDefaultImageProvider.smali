.class Lcom/hzbhd/bluetooth/ContactPhotoManager$BlankDefaultImageProvider;
.super Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlankDefaultImageProvider"
.end annotation


# static fields
.field private static sDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManager$DefaultImageProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hzbhd/bluetooth/ContactPhotoManager$1;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ContactPhotoManager$BlankDefaultImageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;IZ)V
    .locals 1

    .line 130
    sget-object p2, Lcom/hzbhd/bluetooth/ContactPhotoManager$BlankDefaultImageProvider;->sDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 132
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060028

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p3, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object p3, Lcom/hzbhd/bluetooth/ContactPhotoManager$BlankDefaultImageProvider;->sDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    :cond_0
    sget-object p2, Lcom/hzbhd/bluetooth/ContactPhotoManager$BlankDefaultImageProvider;->sDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

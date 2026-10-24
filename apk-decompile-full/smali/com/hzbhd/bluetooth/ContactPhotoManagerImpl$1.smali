.class Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$1;
.super Landroid/util/LruCache;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;I)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$1;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 385
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$1;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$000(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;)V

    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 378
    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$1;->entryRemoved(ZLjava/lang/Object;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected sizeOf(Ljava/lang/Object;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 380
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 378
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$1;->sizeOf(Ljava/lang/Object;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

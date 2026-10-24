.class Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$2;
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
        "Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;I)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$2;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;)V
    .locals 0

    .line 396
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$2;->this$0:Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;->access$000(Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl;)V

    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 389
    check-cast p3, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;

    check-cast p4, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$2;->entryRemoved(ZLjava/lang/Object;Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;)V

    return-void
.end method

.method protected sizeOf(Ljava/lang/Object;Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;)I
    .locals 0

    .line 391
    iget-object p1, p2, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    array-length p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 389
    check-cast p2, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;

    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$2;->sizeOf(Ljava/lang/Object;Lcom/hzbhd/bluetooth/ContactPhotoManagerImpl$BitmapHolder;)I

    move-result p1

    return p1
.end method
